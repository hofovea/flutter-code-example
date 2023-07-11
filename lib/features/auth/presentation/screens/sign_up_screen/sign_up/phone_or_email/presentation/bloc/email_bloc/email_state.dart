part of 'email_bloc.dart';

@freezed
class EmailState with _$EmailState {
  const factory EmailState.initial() = _Initial;

  const factory EmailState.loading() = _Loading;

  const factory EmailState.enabledSubmit() = _EnabledSubmit;

  const factory EmailState.disabledSubmit() = _DisabledSubmit;

  const factory EmailState.validationEmailSuccess(String email) =
      _ValidationEmailSuccess;

  const factory EmailState.validationFailureEmailExists() =
      _ValidationFailureEmailExists;

  const factory EmailState.validationFailureEmailIsNotValid() =
      _ValidationFailureEmailIsNotValid;

  const factory EmailState.validationFailureEmailUnknown() =
      _ValidationFailureEmailUnknown;
}
