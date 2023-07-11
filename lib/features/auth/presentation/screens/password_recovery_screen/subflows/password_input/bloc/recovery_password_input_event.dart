part of 'recovery_password_input_bloc.dart';

@freezed
class RecoveryPasswordInputEvent with _$RecoveryPasswordInputEvent {
  const factory RecoveryPasswordInputEvent.enableSubmit() = _EnableSubmit;

  const factory RecoveryPasswordInputEvent.disableSubmit() = _DisableSubmit;

  const factory RecoveryPasswordInputEvent.submit(
    String? email,
    String? phone,
    String password,
    String confirmPassword,
  ) = _Submit;
}
