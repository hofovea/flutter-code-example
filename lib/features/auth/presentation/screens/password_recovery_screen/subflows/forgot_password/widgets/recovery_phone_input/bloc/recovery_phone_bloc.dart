import 'package:bloc/bloc.dart';

import 'package:code_example/core/domain/failures/failures.dart';
import 'package:code_example/core/domain/usecase/usecase.dart';
import 'package:code_example/features/auth/domain/use_cases/recovery_validate_phone.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:code_example/di/di_container.dart' as di;

part 'recovery_phone_event.dart';
part 'recovery_phone_state.dart';
part 'recovery_phone_bloc.freezed.dart';

class RecoveryPhoneBloc extends Bloc<RecoveryPhoneEvent, RecoveryPhoneState> {
  final RecoveryValidatePhone _validatePhone =
      di.serviceLocator<RecoveryValidatePhone>();

  RecoveryPhoneBloc() : super(const RecoveryPhoneState.initial()) {
    on<RecoveryPhoneEvent>((event, emit) async {
      await event.when(
        trySubmitPhone: (phone) async {
          emit(const RecoveryPhoneState.loading());

          final validationResult =
              await _validatePhone(SingleStringParams(phone));

          validationResult.fold(
            (failure) {
              switch (failure.runtimeType) {
                case AccountNotExistsFailure:
                  emit(const RecoveryPhoneState
                      .validationFailureAccountNotFound());
                  break;
                case InvalidFormatFailure:
                  emit(const RecoveryPhoneState
                      .validationFailurePhoneIsNotValid());
                  break;
                default:
                  emit(
                      const RecoveryPhoneState.validationFailurePhoneUnknown());
              }
            },
            (result) {
              emit(RecoveryPhoneState.validationPhoneSuccess(phone));
            },
          );
        },
        enableSubmit: () {
          emit(const RecoveryPhoneState.enabledSubmit());
        },
        disableSubmit: () {
          emit(const RecoveryPhoneState.disabledSubmit());
        },
      );
    });
  }
}
