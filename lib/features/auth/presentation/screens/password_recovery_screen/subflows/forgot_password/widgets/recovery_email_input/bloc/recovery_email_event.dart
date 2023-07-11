part of 'recovery_email_bloc.dart';

@freezed
class RecoveryEmailEvent with _$RecoveryEmailEvent {
  const factory RecoveryEmailEvent.enableSubmit() = _EnableSubmit;

  const factory RecoveryEmailEvent.disableSubmit() = _DisableSubmit;

  const factory RecoveryEmailEvent.trySubmitEmail(String email) =
      _TrySubmitEmail;
}
