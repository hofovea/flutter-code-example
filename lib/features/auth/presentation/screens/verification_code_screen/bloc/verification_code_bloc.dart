import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:code_example/core/domain/failures/failures.dart';
import 'package:code_example/core/domain/usecase/usecase.dart';
import 'package:code_example/features/auth/domain/entities/auth_user.dart';
import 'package:code_example/features/auth/domain/services/sms_autofill_service.dart';
import 'package:code_example/features/auth/domain/services/timer_duration_service.dart';
import 'package:code_example/features/auth/domain/use_cases/request_verification_code.dart';
import 'package:code_example/features/auth/domain/use_cases/sign_up_user.dart';
import 'package:code_example/features/auth/domain/use_cases/validate_verification_code.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'verification_code_event.dart';

part 'verification_code_state.dart';

part 'verification_code_bloc.freezed.dart';

class VerificationCodeBloc
    extends Bloc<VerificationCodeEvent, VerificationCodeState> {
  final RequestVerificationCode _requestVerificationCode;
  final ValidateVerificationCode _validateVerificationCode;
  final SignUpUser _signUpUser;
  final charsOnlyRegexp = RegExp(r'\D+');

  VerificationCodeBloc(
    this._requestVerificationCode,
    this._validateVerificationCode,
    this._signUpUser,
  ) : super(const VerificationCodeState.initial()) {
    on<VerificationCodeEvent>(
      (event, emit) async {
        await event.when(
          enableConfirm: () {
            emit(
              const VerificationCodeState.enabledConfirm(),
            );
          },
          disableConfirm: () {
            emit(
              const VerificationCodeState.disabledConfirm(),
            );
          },
          requestCode: (String contactInfo) async {
            Duration timeLeft =
                await TimerDurationService.getDurationTillExpiration();
            if (timeLeft != Duration.zero) {
              add(
                const VerificationCodeEvent.showTimer(),
              );
            } else {
              final result = await _requestVerificationCode(
                SingleStringParams(contactInfo),
              );
              await result.fold(
                (failure) {
                  switch (failure.runtimeType) {
                    case TooManyRequestsFailure:
                      TooManyRequestsFailure? tooManyRequestsFailure =
                          failure as TooManyRequestsFailure?;
                      if (tooManyRequestsFailure != null &&
                          tooManyRequestsFailure.tryAfterMillis != null) {
                        add(
                          VerificationCodeEvent.tooManyRequestsError(
                            Duration(
                              milliseconds: int.parse(
                                  tooManyRequestsFailure.tryAfterMillis!),
                            ),
                          ),
                        );
                      } else {
                        emit(
                          const VerificationCodeState.unknownError(),
                        );
                      }
                      break;
                    case InvalidFormatFailure:
                      if (contactInfo.contains('@')) {
                        emit(
                          const VerificationCodeState.invalidEmailError(),
                        );
                      } else {
                        emit(
                          const VerificationCodeState.invalidPhoneError(),
                        );
                      }
                      break;
                    default:
                      emit(
                        const VerificationCodeState.unknownError(),
                      );
                  }
                },
                (result) async {
                  await TimerDurationService.setExpirationTime();
                  add(const VerificationCodeEvent.showTimer());
                  if (!contactInfo.contains('@')) {
                    await SmsAutofillService.listenForSms(
                      (smsText) {
                        add(
                          VerificationCodeEvent.incomingSms(smsText),
                        );
                      },
                      () {
                        add(
                          const VerificationCodeEvent
                              .gotAutoFillNotSupportedError(),
                        );
                      },
                    );
                  }
                },
              );
            }
          },
          resendCode: (String contactInfo) async {
            final result = await _requestVerificationCode(
              SingleStringParams(contactInfo),
            );
            await result.fold(
              (failure) {
                switch (failure.runtimeType) {
                  case TooManyRequestsFailure:
                    TooManyRequestsFailure? tooManyRequestsFailure =
                        failure as TooManyRequestsFailure?;
                    if (tooManyRequestsFailure != null &&
                        tooManyRequestsFailure.tryAfterMillis != null) {
                      add(
                        VerificationCodeEvent.tooManyRequestsError(
                          Duration(
                            milliseconds: int.parse(
                                tooManyRequestsFailure.tryAfterMillis!),
                          ),
                        ),
                      );
                    } else {
                      emit(
                        const VerificationCodeState.unknownError(),
                      );
                    }
                    break;
                  case InvalidFormatFailure:
                    if (contactInfo.contains('@')) {
                      emit(
                        const VerificationCodeState.invalidEmailError(),
                      );
                    } else {
                      emit(
                        const VerificationCodeState.invalidPhoneError(),
                      );
                    }
                    break;
                  default:
                    emit(
                      const VerificationCodeState.unknownError(),
                    );
                }
              },
              (result) async {
                await TimerDurationService.setExpirationTime();
                add(
                  const VerificationCodeEvent.showTimer(),
                );
                if (!contactInfo.contains('@')) {
                  await SmsAutofillService.listenForSms(
                    (smsText) {
                      add(
                        VerificationCodeEvent.incomingSms(smsText),
                      );
                    },
                    () {
                      add(
                        const VerificationCodeEvent
                            .gotAutoFillNotSupportedError(),
                      );
                    },
                  );
                }
              },
            );
          },
          validateCode: (String contactInfo, String code) async {
            emit(
              const VerificationCodeState.loading(),
            );
            final result = await _validateVerificationCode(
              TwoStringParams(contactInfo, code),
            );
            result.fold(
              (failure) {
                switch (failure.runtimeType) {
                  case InvalidFormatFailure:
                    if (contactInfo.contains('@')) {
                      emit(
                        const VerificationCodeState.invalidEmailError(),
                      );
                    } else {
                      emit(
                        const VerificationCodeState.invalidPhoneError(),
                      );
                    }
                    break;
                  default:
                    emit(
                      const VerificationCodeState.unknownError(),
                    );
                }
              },
              (result) {
                if (result) {
                  emit(
                    const VerificationCodeState.validationSuccess(),
                  );
                } else {
                  emit(
                    const VerificationCodeState.invalidCodeError(),
                  );
                }
              },
            );
          },
          showTimer: () async {
            final currentDuration =
                await TimerDurationService.getDurationTillExpiration();
            emit(
              VerificationCodeState.timerVisible(
                currentDuration,
                false,
              ),
            );
          },
          hideTimer: () {
            emit(
              const VerificationCodeState.timerHidden(),
            );
          },
          tooManyRequestsError: (Duration tryAfterMillis) {
            emit(
              VerificationCodeState.timerVisible(
                tryAfterMillis,
                true,
              ),
            );
          },
          incomingSms: (String smsText) {
            String codeFromSms = smsText.replaceAll(charsOnlyRegexp, '');
            emit(
              VerificationCodeState.receivedSms(
                  Platform.isAndroid ? codeFromSms : ''),
            );
          },
          gotAutoFillNotSupportedError: () {
            emit(
              const VerificationCodeState.autoFillNotSupportedError(),
            );
          },
          signUpUser: (
            String? email,
            String? phone,
            String password,
            String nickname,
            String? fullName,
            DateTime birthday,
          ) async {
            var res = await _signUpUser(
              UserEntityParams(
                AuthUser(
                  email,
                  phone,
                  password,
                  nickname,
                  fullName,
                  birthday,
                ),
              ),
            );
            res.fold(
              (failure) {
                switch (failure.runtimeType) {
                  case EmailAlreadyRegisteredFailure:
                    emit(
                      const VerificationCodeState.emailAlreadyRegisteredError(),
                    );
                    break;
                  case PhoneAlreadyRegisteredFailure:
                    emit(
                      const VerificationCodeState.phoneAlreadyRegisteredError(),
                    );
                    break;
                  case NicknameAlreadyTakenFailure:
                    emit(
                      const VerificationCodeState.nicknameAlreadyTakenError(),
                    );
                    break;
                  case MissingEmailFailure:
                    emit(
                      const VerificationCodeState.missingEmailError(),
                    );
                    break;
                  case MissingPhoneFailure:
                    emit(
                      const VerificationCodeState.missingPhoneError(),
                    );
                    break;
                  case MissingPasswordFailure:
                    emit(
                      const VerificationCodeState.missingPasswordError(),
                    );
                    break;
                  case MissingBirthdayFailure:
                    emit(
                      const VerificationCodeState.missingBirthdayError(),
                    );
                    break;
                  case MissingNicknameFailure:
                    emit(
                      const VerificationCodeState.missingNicknameError(),
                    );
                    break;
                  case InvalidEmailFormatFailure:
                    emit(
                      const VerificationCodeState.invalidEmailFormatError(),
                    );
                    break;
                  case InvalidPasswordFormatFailure:
                    emit(
                      const VerificationCodeState.invalidPasswordFormatError(),
                    );
                    break;
                  case InvalidNicknameFormatFailure:
                    emit(
                      const VerificationCodeState.invalidNicknameFormatError(),
                    );
                    break;
                  default:
                    emit(
                      const VerificationCodeState.unknownError(),
                    );
                }
              },
              (result) {
                emit(
                  const VerificationCodeState.signUpSuccess(),
                );
              },
            );
          },
        );
      },
    );
  }
}
