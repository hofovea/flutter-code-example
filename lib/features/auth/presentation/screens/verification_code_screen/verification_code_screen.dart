import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:alt_sms_autofill/alt_sms_autofill.dart';

import 'package:code_example/common/ui_kit/app_bars/empty_app_bar.dart';
import 'package:code_example/core/presentation/routing/app_router.gr.dart';
import 'package:code_example/core/presentation/wrappers/connectivity_wrapper/bloc/connection_status_bloc.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:code_example/common/app_colors/app_colors.dart';
import 'package:code_example/common/ui_kit/text_fields/styleable_text_editing_controller/styleable_text_editing_controller.dart';
import 'package:code_example/common/ui_kit/text_fields/styleable_text_editing_controller/text_part_style_definition.dart';
import 'package:code_example/di/di_container.dart' as di;
import 'package:code_example/features/auth/presentation/screens/verification_code_screen/bloc/verification_code_bloc.dart';
import 'package:code_example/features/auth/presentation/screens/verification_code_screen/verification_code_style_constants.dart';
import 'package:code_example/features/auth/presentation/screens/verification_code_screen/widgets/simple_ui_timer/simple_ui_timer.dart';

class VerificationCodeScreen extends StatefulWidget {
  final String? email;
  final String? phone;
  final String? password;
  final String? nickname;
  final String? fullName;
  final DateTime? birthday;
  final void Function(BuildContext newContext)? onVerificationSuccess;
  final void Function(BuildContext newContext)? onAppBarActionPressed;
  final void Function(BuildContext newContext)? onChangeAuthMethodPressed;

  static final TextEditingController _hintController =
      StyleableTextEditingController(
    textPartStyles: [
      TextPartStyleDefinition(
        pattern: r'[0-9]',
        style: const TextStyle(color: AppColors.mainTextThemeColor),
      ),
    ],
  );
  static final TextEditingController _userInputController =
      TextEditingController();
  static final MaskTextInputFormatter _maskFormatter = MaskTextInputFormatter(
    mask: hint,
    filter: filter,
    type: MaskAutoCompletionType.lazy,
  );

  const VerificationCodeScreen({
    Key? key,
    this.email,
    this.phone,
    this.password,
    this.nickname,
    this.fullName,
    this.birthday,
    this.onVerificationSuccess,
    this.onAppBarActionPressed,
    this.onChangeAuthMethodPressed,
  }) : super(key: key);

  @override
  State<VerificationCodeScreen> createState() => _VerificationCodeScreenState();
}

class _VerificationCodeScreenState extends State<VerificationCodeScreen> {
  late String subtitle;

  late String changeAuthMethodText;

  bool isTimerVisible = false;

  bool isLongTimeout = false;

  Duration timerDuration = Duration.zero;

  String codeToSubmit = '';

  String contactInfo = '';

  VerificationCodeBloc? _verificationCodeBloc;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    contactInfo = widget.email != null ? widget.email! : widget.phone!;
    if (widget.email != null) {
      subtitle = AppLocalizations.of(context)!.verificationCodeEmailSubtitle;
      changeAuthMethodText = AppLocalizations.of(context)!.changeEmail;
    } else {
      subtitle = AppLocalizations.of(context)!.verificationCodePhoneSubtitle;
      changeAuthMethodText = AppLocalizations.of(context)!.changePhone;
    }
    VerificationCodeScreen._hintController.text = hint;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ConnectionStatusBloc, ConnectionStatusState>(
      builder: (context, state) {
        bool isConnected = state.maybeWhen(
          connectionStatus: (isConnected) => isConnected,
          orElse: () => true,
        );
        return BlocProvider(
          create: (context) {
            final bloc = di.serviceLocator<VerificationCodeBloc>();
            if (isConnected) {
              return bloc
                ..add(
                  VerificationCodeEvent.requestCode(contactInfo),
                );
            }
            return bloc;
          },
          child: BlocConsumer<VerificationCodeBloc, VerificationCodeState>(
            listener: (context, state) {
              state.maybeWhen(
                receivedSms: (String code) {
                  String formattedCode = _reformatSmsCodeToHint(code);
                  VerificationCodeScreen._maskFormatter.clear();
                  VerificationCodeScreen._userInputController.text =
                      VerificationCodeScreen._maskFormatter.maskText(code);
                  VerificationCodeScreen._hintController.text = formattedCode;
                  codeToSubmit = code;
                  if (codeToSubmit.isNotEmpty) {
                    _verificationCodeBloc?.add(
                      const VerificationCodeEvent.enableConfirm(),
                    );
                  }
                },
                timerHidden: () {
                  isTimerVisible = false;
                  isLongTimeout = false;
                },
                timerVisible: (Duration duration, bool isMaxDuration) {
                  isTimerVisible = true;
                  isLongTimeout = isMaxDuration;
                  timerDuration = duration;
                },
                validationSuccess: () {
                  if (widget.onVerificationSuccess != null) {
                    widget.onVerificationSuccess!(context);
                  } else {
                    _verificationCodeBloc?.add(
                      VerificationCodeEvent.signUpUser(
                        widget.email,
                        widget.phone,
                        widget.password!,
                        widget.nickname!,
                        widget.fullName,
                        widget.birthday!,
                      ),
                    );
                  }
                },
                signUpSuccess: () {
                  context.router.replace(
                    AddPhotoRoute(),
                  );
                  AutoRouter.of(context).pushAndPopUntil(
                    ConnectivityWrapperRoute(
                      children: [
                        AuthorizedFlowWrapperRoute(
                          children: [
                            AddPhotoRoute(),
                          ],
                        ),
                      ],
                    ),
                    predicate: (Route<dynamic> route) => false,
                  );
                },
                invalidPasswordFormatError: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Invalid Password Format'),
                    ),
                  );
                },
                invalidNicknameFormatError: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Invalid Nickname Format'),
                    ),
                  );
                },
                invalidEmailFormatError: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Invalid Email Format'),
                    ),
                  );
                },
                emailAlreadyRegisteredError: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Email is Already registered'),
                    ),
                  );
                },
                phoneAlreadyRegisteredError: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Phone is Already registered'),
                    ),
                  );
                },
                nicknameAlreadyTakenError: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Nickname is Already taken'),
                    ),
                  );
                },
                missingEmailError: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Email is missing'),
                    ),
                  );
                },
                missingPhoneError: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Phone is missing'),
                    ),
                  );
                },
                missingNicknameError: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Nickname is missing'),
                    ),
                  );
                },
                missingPasswordError: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Password is missing'),
                    ),
                  );
                },
                missingBirthdayError: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Birthday is missing'),
                    ),
                  );
                },
                orElse: () {},
              );
            },
            builder: (context, state) {
              _verificationCodeBloc =
                  BlocProvider.of<VerificationCodeBloc>(context);
              return GestureDetector(
                onTap: () {
                  FocusManager.instance.primaryFocus?.unfocus();
                },
                child: Scaffold(
                  resizeToAvoidBottomInset: true,
                  appBar: EmptyAppBar(
                    onPressed: () {
                      if (widget.onAppBarActionPressed != null) {
                        widget.onAppBarActionPressed!(context);
                      } else {
                        AutoRouter.of(context).replace(
                          BirthdayRoute(
                            phone: widget.phone,
                            email: widget.email,
                            password: widget.password,
                            nickname: widget.nickname,
                            fullName: widget.fullName,
                            birthday: widget.birthday,
                          ),
                        );
                      }
                    },
                  ),
                  body: Center(
                    child: Column(
                      children: [
                        const SizedBox(height: gapFromAppBar),
                        Padding(
                          padding: const EdgeInsets.only(bottom: titlePadding),
                          child: Text(
                              AppLocalizations.of(context)!
                                  .verificationCodeTitle,
                              style: Theme.of(context).textTheme.headlineLarge),
                        ),
                        Text(
                          subtitle,
                          textAlign: TextAlign.center,
                          style:
                              Theme.of(context).textTheme.labelSmall!.copyWith(
                                    color: AppColors.subtitle,
                                  ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: textInputVerticalPadding,
                            horizontal: wideHorizontalPadding,
                          ),
                          child: Stack(
                            children: [
                              IgnorePointer(
                                child: TextField(
                                  controller:
                                      VerificationCodeScreen._hintController,
                                  style: const TextStyle(
                                      color: AppColors.hintText),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              TextField(
                                controller:
                                    VerificationCodeScreen._userInputController,
                                showCursor: false,
                                inputFormatters: [
                                  VerificationCodeScreen._maskFormatter
                                ],
                                textAlign: TextAlign.center,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  fillColor: Colors.transparent,
                                  errorText: state.maybeWhen(
                                    invalidCodeError: () =>
                                        AppLocalizations.of(context)!
                                            .invalidVerificationCode,
                                    invalidEmailError: () =>
                                        AppLocalizations.of(context)!
                                            .enterValidEmail,
                                    invalidPhoneError: () =>
                                        AppLocalizations.of(context)!
                                            .enterValidPhone,
                                    autoFillNotSupportedError: () =>
                                        AppLocalizations.of(context)!
                                            .smsAutoFillUnsupported,
                                    unknownError: () =>
                                        AppLocalizations.of(context)!
                                            .unknownError,
                                    orElse: () => null,
                                  ),
                                ),
                                style: const TextStyle(
                                  color: Colors.transparent,
                                ),
                                onChanged: (val) {
                                  VerificationCodeScreen._hintController.text =
                                      _getHintToDisplay(val);
                                  if (VerificationCodeScreen._maskFormatter
                                          .getUnmaskedText()
                                          .length ==
                                      6) {
                                    codeToSubmit = VerificationCodeScreen
                                        ._maskFormatter
                                        .getUnmaskedText();
                                    _verificationCodeBloc?.add(
                                      const VerificationCodeEvent
                                          .enableConfirm(),
                                    );
                                  } else {
                                    _verificationCodeBloc?.add(
                                      const VerificationCodeEvent
                                          .disableConfirm(),
                                    );
                                  }
                                },
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: wideHorizontalPadding),
                          child: SizedBox(
                            width: buttonWidth,
                            height: buttonHeight,
                            child: ElevatedButton(
                              onPressed: isConnected
                                  ? state.maybeWhen(
                                      loading: () => () {},
                                      enabledConfirm: () => () {
                                        _verificationCodeBloc?.add(
                                          VerificationCodeEvent.validateCode(
                                              contactInfo, codeToSubmit),
                                        );
                                      },
                                      orElse: () => null,
                                    )
                                  : null,
                              child: state.maybeWhen(
                                loading: () => CupertinoActivityIndicator(
                                  color:
                                      Theme.of(context).scaffoldBackgroundColor,
                                ),
                                orElse: () => Text(
                                  AppLocalizations.of(context)!.confirm,
                                  style: Theme.of(context)
                                      .textTheme
                                      .displayMedium!
                                      .copyWith(
                                        color: AppColors.scaffoldBackground,
                                      ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: codeNotReceivedTextTopPadding),
                          child: isLongTimeout && isTimerVisible
                              ? Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: codeTimeoutHorizontalPadding,
                                  ),
                                  child: Text(
                                    AppLocalizations.of(context)!
                                        .verificationCodeTimeout(
                                      timerDuration.inMinutes,
                                    ),
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelSmall
                                        ?.copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .error,
                                        ),
                                    textAlign: TextAlign.center,
                                  ),
                                )
                              : Text(
                                  AppLocalizations.of(context)!
                                      .verificationCodeNotReceived,
                                  style: Theme.of(context).textTheme.labelSmall,
                                ),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap),
                          onPressed: !isTimerVisible && isConnected
                              ? () {
                                  BlocProvider.of<VerificationCodeBloc>(context)
                                      .add(
                                    VerificationCodeEvent.resendCode(
                                        contactInfo),
                                  );
                                }
                              : null,
                          child: Text(
                            AppLocalizations.of(context)!
                                .resendVerificationCode,
                            style: Theme.of(context)
                                .textTheme
                                .labelSmall!
                                .copyWith(
                                  color: !isTimerVisible && isConnected
                                      ? AppColors.primary
                                      : AppColors.hintText,
                                ),
                          ),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          ),
                          onPressed: () {
                            if (widget.onChangeAuthMethodPressed != null) {
                              widget.onChangeAuthMethodPressed!(context);
                            } else {
                              AutoRouter.of(context).replace(
                                PhoneOrEmailRoute(
                                  phone: widget.phone,
                                  email: widget.email,
                                  password: widget.password,
                                  nickname: widget.nickname,
                                  fullName: widget.fullName,
                                  birthday: widget.birthday,
                                ),
                              );
                            }
                          },
                          child: Text(
                            changeAuthMethodText,
                            style: Theme.of(context)
                                .textTheme
                                .labelSmall!
                                .copyWith(
                                  color: AppColors.primary,
                                ),
                          ),
                        ),
                        Visibility(
                          visible: isTimerVisible,
                          child: Padding(
                            padding:
                                const EdgeInsets.only(top: timerTopPadding),
                            child: SimpleUiTimer(
                              timerDuration: timerDuration,
                              onComplete: () {
                                _verificationCodeBloc?.add(
                                  const VerificationCodeEvent.hideTimer(),
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }

  @override
  Future<void> dispose() async {
    AltSmsAutofill().unregisterListener();
    _clearTextFields();
    _verificationCodeBloc?.close();
    di.serviceLocator.resetLazySingleton<VerificationCodeBloc>();
    super.dispose();
  }

  String _getHintToDisplay(String initialText) {
    String newHint = '';
    for (int i = 0; i < hint.length; i++) {
      if (i < initialText.length) {
        newHint += initialText[i];
      } else {
        newHint += hint[i];
      }
    }
    return newHint;
  }

  void _clearTextFields() {
    VerificationCodeScreen._userInputController.clear();
    VerificationCodeScreen._maskFormatter.clear();
    VerificationCodeScreen._hintController.clear();
  }

  String _reformatSmsCodeToHint(String code) {
    String result = _getHintToDisplay(code.split('').join(' '));
    return result;
  }
}
