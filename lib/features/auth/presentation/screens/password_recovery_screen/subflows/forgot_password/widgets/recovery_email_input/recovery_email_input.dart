import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:code_example/common/ui_kit/text_fields/email_text_field.dart';
import 'package:code_example/core/presentation/routing/app_router.gr.dart';
import 'package:code_example/core/presentation/validation/validation_util.dart';
import 'package:code_example/core/presentation/wrappers/connectivity_wrapper/bloc/connection_status_bloc.dart';
import 'package:code_example/features/auth/presentation/screens/password_recovery_screen/subflows/forgot_password/widgets/recovery_email_input/bloc/recovery_email_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:code_example/features/auth/presentation/screens/sign_up_screen/style_constants.dart';

class RecoveryEmailInput extends StatelessWidget {
  final String buttonText;
  final TextEditingController? controller;
  final String? email;

  const RecoveryEmailInput({
    Key? key,
    required this.email,
    required this.buttonText,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String? emailToSubmit = email;

    return BlocBuilder<ConnectionStatusBloc, ConnectionStatusState>(
      builder: (context, state) {
        bool isConnected = state.maybeWhen(
          connectionStatus: (isConnected) => isConnected,
          orElse: () => true,
        );
        return BlocProvider(
          create: (context) => emailToSubmit != null
              ? (RecoveryEmailBloc()
                ..add(
                  const RecoveryEmailEvent.enableSubmit(),
                ))
              : RecoveryEmailBloc(),
          child: BlocConsumer<RecoveryEmailBloc, RecoveryEmailState>(
            listener: (context, state) {
              state.maybeWhen(
                validationEmailSuccess: (email) {
                  context.router.replace(
                    VerificationCodeRoute(
                        email: email,
                        onVerificationSuccess: (BuildContext newContext) {
                          newContext.router.replace(
                            RecoveryPasswordInputRoute(
                              phone: null,
                              email: emailToSubmit,
                            ),
                          );
                        },
                        onAppBarActionPressed: (BuildContext newContext) {
                          newContext.router.replace(
                            ForgotPasswordRoute(email: email),
                          );
                        },
                        onChangeAuthMethodPressed: (BuildContext newContext) {
                          newContext.router.replace(
                            ForgotPasswordRoute(email: email),
                          );
                        }),
                  );
                },
                orElse: () {},
              );
            },
            builder: (context, state) {
              return Column(
                children: [
                  EmailTextField(
                    controller: controller,
                    onFieldReady: (value) {
                      emailToSubmit = value;
                    },
                    formErrorsStream: BlocProvider.of<RecoveryEmailBloc>(
                            context)
                        .stream
                        .map(
                          (state) => state.maybeWhen(
                            validationFailureEmailIsNotValid: () =>
                                AppLocalizations.of(context)!.enterValidEmail,
                            validationFailureAccountNotFound: () =>
                                AppLocalizations.of(context)!.accountNotExists,
                            validationFailureEmailUnknown: () =>
                                AppLocalizations.of(context)!.unknownError,
                            orElse: () => null,
                          ),
                        ),
                    validator: (String? value) {
                      BlocProvider.of<RecoveryEmailBloc>(context).add(
                        const RecoveryEmailEvent.disableSubmit(),
                      );
                      if (value == null || value.isEmpty) {
                        return AppLocalizations.of(context)!.requiredFieldError;
                      } else if (!emailValidationRegExp.hasMatch(value)) {
                        return AppLocalizations.of(context)!.enterValidEmail;
                      }
                      BlocProvider.of<RecoveryEmailBloc>(context).add(
                        const RecoveryEmailEvent.enableSubmit(),
                      );
                      return null;
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: widePadding,
                    ),
                    child: SizedBox(
                      width: buttonWidth,
                      height: buttonHeight,
                      child: ElevatedButton(
                        onPressed: isConnected
                            ? state.maybeWhen(
                                enabledSubmit: () => () {
                                  FocusManager.instance.primaryFocus?.unfocus();
                                  if (emailToSubmit != null) {
                                    BlocProvider.of<RecoveryEmailBloc>(context)
                                        .add(
                                      RecoveryEmailEvent.trySubmitEmail(
                                          emailToSubmit!),
                                    );
                                  }
                                },
                                loading: () => () {},
                                orElse: () => null,
                              )
                            : null,
                        child: state.maybeWhen(
                          loading: () => CupertinoActivityIndicator(
                            color: Theme.of(context).scaffoldBackgroundColor,
                          ),
                          orElse: () => Text(buttonText),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        );
      },
    );
  }
}
