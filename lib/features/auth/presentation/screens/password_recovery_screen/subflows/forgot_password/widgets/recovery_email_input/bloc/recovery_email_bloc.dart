import 'package:bloc/bloc.dart';

import 'package:code_example/core/domain/failures/failures.dart';
import 'package:code_example/core/domain/usecase/usecase.dart';
import 'package:code_example/features/auth/domain/use_cases/recovery_validate_email.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:code_example/di/di_container.dart' as di;

part 'recovery_email_event.dart';

part 'recovery_email_state.dart';

part 'recovery_email_bloc.freezed.dart';

class RecoveryEmailBloc extends Bloc<RecoveryEmailEvent, RecoveryEmailState> {
  final RecoveryValidateEmail _validateEmail =
      di.serviceLocator<RecoveryValidateEmail>();

  RecoveryEmailBloc() : super(const RecoveryEmailState.initial()) {
    on<RecoveryEmailEvent>((event, emit) async {
      await event.when(
        trySubmitEmail: (email) async {
          emit(const RecoveryEmailState.loading());

          final validationResult =
              await _validateEmail(SingleStringParams(email));

          validationResult.fold(
            (failure) {
              switch (failure.runtimeType) {
                case AccountNotExistsFailure:
                  emit(const RecoveryEmailState
                      .validationFailureAccountNotFound());
                  break;
                case InvalidFormatFailure:
                  emit(const RecoveryEmailState
                      .validationFailureEmailIsNotValid());
                  break;
                default:
                  emit(
                      const RecoveryEmailState.validationFailureEmailUnknown());
              }
            },
            (result) {
              emit(RecoveryEmailState.validationEmailSuccess(email));
            },
          );
        },
        enableSubmit: () {
          emit(const RecoveryEmailState.enabledSubmit());
        },
        disableSubmit: () {
          emit(const RecoveryEmailState.disabledSubmit());
        },
      );
    });
  }
}
