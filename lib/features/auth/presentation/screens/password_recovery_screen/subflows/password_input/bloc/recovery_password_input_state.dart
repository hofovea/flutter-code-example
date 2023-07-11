part of 'recovery_password_input_bloc.dart';

@freezed
class RecoveryPasswordInputState with _$RecoveryPasswordInputState {
  const factory RecoveryPasswordInputState.initial() = _Initial;

  const factory RecoveryPasswordInputState.loading() = _Loading;

  const factory RecoveryPasswordInputState.enabledSubmit() = _EnabledSubmit;

  const factory RecoveryPasswordInputState.disabledSubmit() = _DisabledSubmit;

  const factory RecoveryPasswordInputState.recoverySuccess() = _RecoverySuccess;

  const factory RecoveryPasswordInputState.recoveryFailure() = _RecoveryFailure;

  const factory RecoveryPasswordInputState.passwordUsedBeforeFailure() =
      _PasswordUsedBeforeFailure;
}
