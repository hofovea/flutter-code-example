import 'package:bloc/bloc.dart';
import 'package:code_example/core/domain/failures/failures.dart';
import 'package:code_example/core/domain/usecase/usecase.dart';
import 'package:code_example/features/auth/domain/use_cases/validate_email.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:code_example/di/di_container.dart' as di;

part 'email_event.dart';

part 'email_state.dart';

part 'email_bloc.freezed.dart';

class EmailBloc extends Bloc<EmailEvent, EmailState> {
  final ValidateEmail _validateEmail = di.serviceLocator<ValidateEmail>();

  EmailBloc() : super(const EmailState.initial()) {
    on<EmailEvent>((event, emit) async {
      await event.when(
        trySubmitEmail: (email) async {
          emit(const EmailState.loading());

          final validationResult =
              await _validateEmail(SingleStringParams(email));

          validationResult.fold(
            (failure) {
              switch (failure.runtimeType) {
                case AlreadyExistsFailure:
                  emit(const EmailState.validationFailureEmailExists());
                  break;
                case InvalidFormatFailure:
                  emit(const EmailState.validationFailureEmailIsNotValid());
                  break;
                default:
                  emit(const EmailState.validationFailureEmailUnknown());
              }
            },
            (result) {
              emit(EmailState.validationEmailSuccess(email));
            },
          );
        },
        enableSubmit: () {
          emit(const EmailState.enabledSubmit());
        },
        disableSubmit: () {
          emit(const EmailState.disabledSubmit());
        },
      );
    });
  }
}
