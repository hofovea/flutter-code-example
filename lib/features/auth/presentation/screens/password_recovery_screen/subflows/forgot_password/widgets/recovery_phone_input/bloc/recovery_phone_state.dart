part of 'recovery_phone_bloc.dart';

@freezed
class RecoveryPhoneState with _$RecoveryPhoneState {
  const factory RecoveryPhoneState.initial() = _Initial;

  const factory RecoveryPhoneState.loading() = _Loading;

  const factory RecoveryPhoneState.enabledSubmit() = _EnabledSubmit;

  const factory RecoveryPhoneState.disabledSubmit() = _DisabledSubmit;

  const factory RecoveryPhoneState.validationPhoneSuccess(String phone) =
      _ValidationPhoneSuccess;

  const factory RecoveryPhoneState.validationFailureAccountNotFound() =
      _ValidationFailureAccountNotFound;

  const factory RecoveryPhoneState.validationFailurePhoneIsNotValid() =
      _ValidationFailurePhoneIsNotValid;

  const factory RecoveryPhoneState.validationFailurePhoneUnknown() =
      _ValidationFailurePhoneUnknown;
}
