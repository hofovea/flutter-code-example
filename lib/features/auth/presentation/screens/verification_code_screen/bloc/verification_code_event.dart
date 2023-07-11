part of 'verification_code_bloc.dart';

@freezed
class VerificationCodeEvent with _$VerificationCodeEvent {
  const factory VerificationCodeEvent.enableConfirm() = _EnableConfirm;

  const factory VerificationCodeEvent.disableConfirm() = _DisableConfirm;

  const factory VerificationCodeEvent.resendCode(String contactInfo) =
      _ResendCode;

  const factory VerificationCodeEvent.validateCode(
      String contactInfo, String code) = _ValidateCode;

  const factory VerificationCodeEvent.requestCode(String contactInfo) =
      _RequestCode;

  const factory VerificationCodeEvent.incomingSms(String smsText) =
      _IncomingSms;

  const factory VerificationCodeEvent.showTimer() = _ShowTimer;

  const factory VerificationCodeEvent.hideTimer() = _HideTimer;

  const factory VerificationCodeEvent.tooManyRequestsError(
      Duration tryAfterDuration) = _TooManyRequestsError;

  const factory VerificationCodeEvent.gotAutoFillNotSupportedError() =
      _GotAutoFillNotSupportedError;

  const factory VerificationCodeEvent.signUpUser(
    String? email,
    String? phone,
    String password,
    String nickname,
    String? fullName,
    DateTime birthday,
  ) = _SignUpUser;
}
