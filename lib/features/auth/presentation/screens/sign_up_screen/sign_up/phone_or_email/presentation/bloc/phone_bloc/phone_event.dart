part of 'phone_bloc.dart';

@freezed
class PhoneEvent with _$PhoneEvent {
  const factory PhoneEvent.enableSubmit() = _EnableSubmit;

  const factory PhoneEvent.disableSubmit() = _DisableSubmit;

  const factory PhoneEvent.trySubmitPhone(String phone) = _TrySubmitPhone;
}
