part of 'recovery_email_bloc.dart';

@freezed
class RecoveryEmailState with _$RecoveryEmailState {
  const factory RecoveryEmailState.initial() = _Initial;

  const factory RecoveryEmailState.loading() = _Loading;

  const factory RecoveryEmailState.enabledSubmit() = _EnabledSubmit;

  const factory RecoveryEmailState.disabledSubmit() = _DisabledSubmit;

  const factory RecoveryEmailState.validationEmailSuccess(String email) =
      _ValidationEmailSuccess;

  const factory RecoveryEmailState.validationFailureAccountNotFound() =
      _ValidationFailureAccountNotFound;

  const factory RecoveryEmailState.validationFailureEmailIsNotValid() =
      _ValidationFailureEmailIsNotValid;

  const factory RecoveryEmailState.validationFailureEmailUnknown() =
      _ValidationFailureEmailUnknown;
}
