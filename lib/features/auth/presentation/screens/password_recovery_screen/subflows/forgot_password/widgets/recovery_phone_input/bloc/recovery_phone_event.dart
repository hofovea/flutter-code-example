part of 'recovery_phone_bloc.dart';

@freezed
class RecoveryPhoneEvent with _$RecoveryPhoneEvent {
  const factory RecoveryPhoneEvent.enableSubmit() = _EnableSubmit;

  const factory RecoveryPhoneEvent.disableSubmit() = _DisableSubmit;

  const factory RecoveryPhoneEvent.trySubmitPhone(String phone) =
      _TrySubmitPhone;
}
