part of 'password_bloc.dart';

@freezed
class PasswordEvent with _$PasswordEvent {
  const factory PasswordEvent.enableSubmit() = _EnableSubmit;
  const factory PasswordEvent.disableSubmit() = _DisableSubmit;
  const factory PasswordEvent.submit(String password) = _Submit;
}
