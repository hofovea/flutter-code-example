import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:code_example/common/ui_kit/app_bars/empty_app_bar.dart';
import 'package:code_example/common/ui_kit/text_fields/password_text_field.dart';
import 'package:code_example/core/presentation/routing/app_router.gr.dart';
import 'package:code_example/core/presentation/validation/validation_util.dart';
import 'package:code_example/features/auth/presentation/screens/password_recovery_screen/subflows/password_input/bloc/recovery_password_input_bloc.dart';
import 'package:code_example/features/auth/presentation/screens/password_recovery_screen/subflows/password_input/widgets/recovery_requirements_column.dart';
import 'package:code_example/features/auth/presentation/screens/sign_up_screen/style_constants.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class RecoveryPasswordInputScreen extends StatelessWidget {
  final String? phone;
  final String? email;

  const RecoveryPasswordInputScreen({
    Key? key,
    required this.phone,
    required this.email,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final passwordController = TextEditingController();
    final confirmPasswordController = TextEditingController();

    String? passwordToSubmit;

    return BlocProvider(
      create: (context) => RecoveryPasswordInputBloc(),
      child:
          BlocConsumer<RecoveryPasswordInputBloc, RecoveryPasswordInputState>(
        listener: (context, state) {
          state.maybeWhen(
            recoverySuccess: () {
              AutoRouter.of(context).replace(
                const SignInRoute(),
              );
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
          return GestureDetector(
            onTap: () {
              FocusManager.instance.primaryFocus?.unfocus();
            },
            child: Scaffold(
              resizeToAvoidBottomInset: true,
              appBar: const EmptyAppBar(),
              body: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    const SizedBox(height: gapFromAppBar),
                    Padding(
                      padding: const EdgeInsets.only(bottom: titlePadding),
                      child: Text(AppLocalizations.of(context)!.createPassword,
                          style: Theme.of(context).textTheme.headlineLarge),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: textInputVerticalPadding,
                          bottom: textInputSmallVerticalPadding,
                          left: widePadding,
                          right: widePadding),
                      child: PasswordTextField(
                        controller: passwordController,
                        formErrorsStream:
                            BlocProvider.of<RecoveryPasswordInputBloc>(context)
                                .stream
                                .map(
                                  (state) => state.maybeWhen(
                                    passwordUsedBeforeFailure: () {
                                      return AppLocalizations.of(context)!
                                          .passwordWasUsedBefore;
                                    },
                                    recoveryFailure: () {
                                      return AppLocalizations.of(context)!
                                          .unknownError;
                                    },
                                    orElse: () {
                                      return null;
                                    },
                                  ),
                                ),
                        validator: (String? value) {
                          BlocProvider.of<RecoveryPasswordInputBloc>(context)
                              .add(
                            const RecoveryPasswordInputEvent.disableSubmit(),
                          );
                          if (value == null || value.isEmpty) {
                            return AppLocalizations.of(context)!
                                .requiredFieldError;
                          } else if (!passwordValidationRegExp
                              .hasMatch(value)) {
                            return AppLocalizations.of(context)!
                                .passwordMinimalRequirements;
                          }
                          return null;
                        },
                      ),
                    ),
                    RecoveryRequirementsColumn(
                        passwordController: passwordController),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: textInputSmallVerticalPadding,
                        bottom: textInputSmallVerticalPadding,
                        left: widePadding,
                        right: widePadding,
                      ),
                      child: PasswordTextField(
                        hintText: AppLocalizations.of(context)!.confirmPassword,
                        controller: confirmPasswordController,
                        formErrorsStream:
                            BlocProvider.of<RecoveryPasswordInputBloc>(context)
                                .stream
                                .map(
                                  (state) => state.maybeWhen(
                                    passwordUsedBeforeFailure: () {
                                      return AppLocalizations.of(context)!
                                          .passwordWasUsedBefore;
                                    },
                                    recoveryFailure: () {
                                      return AppLocalizations.of(context)!
                                          .unknownError;
                                    },
                                    orElse: () {
                                      return null;
                                    },
                                  ),
                                ),
                        onFieldReady: (value) {
                          passwordToSubmit = value;
                        },
                        validator: (String? value) {
                          BlocProvider.of<RecoveryPasswordInputBloc>(context)
                              .add(
                            const RecoveryPasswordInputEvent.disableSubmit(),
                          );
                          if (value == null || value.isEmpty) {
                            return AppLocalizations.of(context)!
                                .requiredFieldError;
                          } else if (passwordController.text !=
                              confirmPasswordController.text) {
                            return AppLocalizations.of(context)!
                                .passwordsDoNotMatch;
                          } else if (!passwordValidationRegExp
                              .hasMatch(passwordController.text)) {
                            BlocProvider.of<RecoveryPasswordInputBloc>(context)
                                .add(const RecoveryPasswordInputEvent
                                    .disableSubmit());
                            return null;
                          }
                          BlocProvider.of<RecoveryPasswordInputBloc>(context)
                              .add(
                            const RecoveryPasswordInputEvent.enableSubmit(),
                          );
                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: widePadding,
                        vertical: buttonVerticalPadding,
                      ),
                      child: SizedBox(
                        width: buttonWidth,
                        height: buttonHeight,
                        child: ElevatedButton(
                          onPressed: state.maybeWhen(
                            enabledSubmit: () => () {
                              FocusManager.instance.primaryFocus?.unfocus();
                              if (passwordToSubmit != null) {
                                BlocProvider.of<RecoveryPasswordInputBloc>(
                                        context)
                                    .add(
                                  RecoveryPasswordInputEvent.submit(
                                    email,
                                    phone,
                                    passwordToSubmit!,
                                    passwordToSubmit!,
                                  ),
                                );
                              }
                            },
                            orElse: () => null,
                          ),
                          child: state.maybeWhen(
                            loading: () => const CupertinoActivityIndicator(),
                            orElse: () => Text(
                              AppLocalizations.of(context)!.next,
                            ),
                          ),
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
  }
}
