part of 'email_bloc.dart';

@freezed
class EmailEvent with _$EmailEvent {
  const factory EmailEvent.enableSubmit() = _EnableSubmit;

  const factory EmailEvent.disableSubmit() = _DisableSubmit;

  const factory EmailEvent.trySubmitEmail(String email) = _TrySubmitEmail;
}
