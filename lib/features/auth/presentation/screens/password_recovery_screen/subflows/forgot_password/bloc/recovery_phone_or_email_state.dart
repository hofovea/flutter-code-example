part of 'recovery_phone_or_email_bloc.dart';

@freezed
class RecoveryPhoneOrEmailState with _$RecoveryPhoneOrEmailState {
  const factory RecoveryPhoneOrEmailState.phone() = _Phone;

  const factory RecoveryPhoneOrEmailState.email() = _Email;
}
