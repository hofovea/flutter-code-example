part of 'phone_bloc.dart';

@freezed
class PhoneState with _$PhoneState {
  const factory PhoneState.initial() = _Initial;

  const factory PhoneState.loading() = _Loading;

  const factory PhoneState.enabledSubmit() = _EnabledSubmit;

  const factory PhoneState.disabledSubmit() = _DisabledSubmit;

  const factory PhoneState.validationPhoneSuccess(String phone) =
      _ValidationPhoneSuccess;

  const factory PhoneState.validationFailurePhoneExists() =
      _ValidationFailurePhoneExists;

  const factory PhoneState.validationFailurePhoneIsNotValid() =
      _ValidationFailurePhoneIsNotValid;

  const factory PhoneState.validationFailurePhoneUnknown() =
      _ValidationFailurePhoneUnknown;
}
