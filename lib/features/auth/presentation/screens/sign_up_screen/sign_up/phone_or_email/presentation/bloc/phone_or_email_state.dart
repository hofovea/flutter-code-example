part of 'phone_or_email_bloc.dart';

@freezed
class PhoneOrEmailState with _$PhoneOrEmailState {
  const factory PhoneOrEmailState.phone() = _Phone;

  const factory PhoneOrEmailState.email() = _Email;
}
