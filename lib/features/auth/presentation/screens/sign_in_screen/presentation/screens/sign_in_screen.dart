import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:code_example/common/app_colors/app_colors.dart';
import 'package:code_example/common/ui_kit/app_bars/empty_app_bar.dart';
import 'package:code_example/common/ui_kit/buttons/i_text_button.dart';
import 'package:code_example/common/ui_kit/logo/interngram_logo.dart';
import 'package:code_example/common/ui_kit/text_fields/password_text_field.dart';
import 'package:code_example/core/presentation/routing/app_router.gr.dart';
import 'package:code_example/core/presentation/wrappers/connectivity_wrapper/bloc/connection_status_bloc.dart';
import 'package:code_example/core/presentation/wrappers/unauthorized_flow_wrapper/bloc/unauthorized_flow_bloc.dart';
import 'package:code_example/features/auth/presentation/screens/sign_in_screen/presentation/bloc/sign_in_bloc.dart';
import 'package:code_example/features/auth/presentation/screens/sign_in_screen/presentation/widgets/create_account_row.dart';
import 'package:code_example/features/auth/presentation/screens/sign_in_screen/presentation/widgets/forgot_password.dart';
import 'package:code_example/features/auth/presentation/screens/sign_in_screen/presentation/widgets/log_in_facebook_row.dart';
import 'package:code_example/features/auth/presentation/screens/sign_in_screen/presentation/widgets/log_in_google_row.dart';
import 'package:code_example/features/auth/presentation/screens/sign_in_screen/presentation/widgets/or_text.dart';
import 'package:code_example/features/auth/presentation/screens/sign_up_screen/style_constants.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final usernameController = TextEditingController();
    final passwordController = TextEditingController();

    return BlocBuilder<ConnectionStatusBloc, ConnectionStatusState>(
      builder: (context, state) {
        bool isConnected = state.maybeWhen(
          connectionStatus: (isConnected) => isConnected,
          orElse: () => true,
        );
        return BlocProvider(
          create: (context) => SignInBloc(),
          child: BlocConsumer<SignInBloc, SignInState>(
            listener: (context, state) {
              state.maybeWhen(
                success: (username, password) {
                  BlocProvider.of<UnauthorizedFlowBloc>(context).add(
                    const UnauthorizedFlowEvent.signIn(),
                  );
                },
                unauthorized: () {
                  showCupertinoDialog(
                    context: context,
                    builder: (_) => CupertinoAlertDialog(
                      title: Text(AppLocalizations.of(context)!.incorrectMail),
                      content: Text(AppLocalizations.of(context)!.mailOrPhoneNumberDoesNotAppear),
                      actions: [
                        ITextButton.blue(
                          onPressed: () {
                            AutoRouter.of(context).pop();
                          },
                          child: Text(
                            AppLocalizations.of(context)!.tryAgain,
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium
                                ?.copyWith(color: AppColors.primary),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                orElse: () {},
              );
            },
            builder: (context, state) {
              return Scaffold(
                resizeToAvoidBottomInset: true,
                appBar: const EmptyAppBar(),
                body: GestureDetector(
                  onTap: () {
                    FocusManager.instance.primaryFocus?.unfocus();
                  },
                  child: BlocListener<UnauthorizedFlowBloc, UnauthorizedFlowState>(
                    listener: (context, state) {
                      state.maybeWhen(
                        success: (bool isFirstTime) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                AppLocalizations.of(context)!.success,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          );
                        },
                        invalidFacebookSignIn: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                AppLocalizations.of(context)!.invalidFacebookSignIn,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          );
                        },
                        invalidGoogleSignIn: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                AppLocalizations.of(context)!.invalidGoogleSignIn,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          );
                        },
                        serverFailure: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(AppLocalizations.of(context)!.serverError),
                            ),
                          );
                        },
                        unknownFailure: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(AppLocalizations.of(context)!.unknownError),
                            ),
                          );
                        },
                        orElse: () {},
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: widePadding),
                      child: SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(bottom: widePadding),
                              child: Logo(),
                            ),
                            const SizedBox(height: gapFromTitle),
                            TextField(
                              controller: usernameController,
                              decoration: InputDecoration(
                                hintText: AppLocalizations.of(context)!.loginHint,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: widePadding),
                              child: PasswordTextField(
                                controller: passwordController,
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Visibility(
                                visible: state.maybeWhen(
                                  validationFailure: () => true,
                                  orElse: () => false,
                                ),
                                child: Text(
                                  AppLocalizations.of(context)!.invalidPhoneEmailPassword,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(color: AppColors.error),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: widePadding),
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: ForgotPassword(
                                  onTap: () {
                                    AutoRouter.of(context).push(
                                      ForgotPasswordRoute(),
                                    );
                                  },
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: widePadding),
                              child: SizedBox(
                                width: buttonWidth,
                                height: buttonHeight,
                                child: ElevatedButton(
                                  onPressed: isConnected
                                      ? () {
                                          BlocProvider.of<SignInBloc>(context).add(
                                            SignInEvent.trySignIn(
                                              usernameController.text,
                                              passwordController.text,
                                            ),
                                          );
                                        }
                                      : null,
                                  child: state.maybeWhen(
                                    loading: () => CupertinoActivityIndicator(
                                      color: Theme.of(context).scaffoldBackgroundColor,
                                    ),
                                    orElse: () => Text(AppLocalizations.of(context)!.logIn),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: gapFromLogIn),
                            CreateAccountRow(
                              onTap: () {
                                AutoRouter.of(context).replace(
                                  PhoneOrEmailRoute(),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
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
}
