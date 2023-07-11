part of 'verification_code_bloc.dart';

@freezed
class VerificationCodeState with _$VerificationCodeState {
  const factory VerificationCodeState.initial() = _Initial;

  const factory VerificationCodeState.loading() = _Loading;

  const factory VerificationCodeState.enabledConfirm() = _EnabledConfirm;

  const factory VerificationCodeState.disabledConfirm() = _DisabledConfirm;

  const factory VerificationCodeState.timerVisible(
      Duration timerDuration, bool isLongTimeout) = _TimerVisible;

  const factory VerificationCodeState.timerHidden() = _TimerHidden;

  const factory VerificationCodeState.receivedSms(String smsText) =
      _ReceivedSms;

  const factory VerificationCodeState.invalidCodeError() = _InvalidCodeError;

  const factory VerificationCodeState.invalidEmailError() = _InvalidEmailError;

  const factory VerificationCodeState.invalidPhoneError() = _InvalidPhoneError;

  const factory VerificationCodeState.unknownError() = _UnknownError;

  const factory VerificationCodeState.autoFillNotSupportedError() =
      _AutoFillNotSupportedError;

  const factory VerificationCodeState.validationSuccess() = _ValidationSuccess;

  const factory VerificationCodeState.signUpSuccess() = _SignUpSuccess;

  const factory VerificationCodeState.emailAlreadyRegisteredError() =
      _EmailAlreadyRegisteredError;
  const factory VerificationCodeState.phoneAlreadyRegisteredError() =
      _PhoneAlreadyRegisteredFailure;
  const factory VerificationCodeState.nicknameAlreadyTakenError() =
      _NicknameAlreadyTakenError;
  const factory VerificationCodeState.missingEmailError() = _MissingEmailError;
  const factory VerificationCodeState.missingPhoneError() = _MissingPhoneError;
  const factory VerificationCodeState.missingPasswordError() =
      _MissingPasswordError;
  const factory VerificationCodeState.missingBirthdayError() =
      _MissingBirthdayError;
  const factory VerificationCodeState.missingNicknameError() =
      _MissingNicknameError;
  const factory VerificationCodeState.invalidEmailFormatError() =
      _InvalidEmailFormatError;
  const factory VerificationCodeState.invalidPasswordFormatError() =
      _InvalidPasswordFormatError;
  const factory VerificationCodeState.invalidNicknameFormatError() =
      _InvalidNicknameFormatError;
}
