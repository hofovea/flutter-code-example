part of 'phone_or_email_bloc.dart';

@freezed
class PhoneOrEmailEvent with _$PhoneOrEmailEvent {
  const factory PhoneOrEmailEvent.switchToPhone() = _SwitchToPhone;

  const factory PhoneOrEmailEvent.switchToEmail() = _SwitchToEmail;
}
