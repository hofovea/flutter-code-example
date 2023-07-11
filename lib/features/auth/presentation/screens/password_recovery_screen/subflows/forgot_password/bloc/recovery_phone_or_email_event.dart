part of 'recovery_phone_or_email_bloc.dart';

@freezed
class RecoveryPhoneOrEmailEvent with _$RecoveryPhoneOrEmailEvent {
  const factory RecoveryPhoneOrEmailEvent.switchToPhone() = _SwitchToPhone;

  const factory RecoveryPhoneOrEmailEvent.switchToEmail() = _SwitchToEmail;
}
