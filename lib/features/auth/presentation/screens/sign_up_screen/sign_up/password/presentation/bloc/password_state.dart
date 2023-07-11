part of 'password_bloc.dart';

@freezed
class PasswordState with _$PasswordState {
  const factory PasswordState.initial() = _Initial;

  const factory PasswordState.enabledSubmit() = _EnabledSubmit;

  const factory PasswordState.disabledSubmit() = _DisabledSubmit;

  const factory PasswordState.validationSuccess(String password) =
      _ValidationSuccess;
}
