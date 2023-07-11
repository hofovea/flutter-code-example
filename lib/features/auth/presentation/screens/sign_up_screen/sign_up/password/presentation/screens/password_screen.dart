import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:code_example/common/ui_kit/app_bars/empty_app_bar.dart';
import 'package:code_example/common/ui_kit/text_fields/password_text_field.dart';
import 'package:code_example/core/presentation/routing/app_router.gr.dart';
import 'package:code_example/core/presentation/validation/validation_util.dart';
import 'package:code_example/features/auth/presentation/screens/sign_up_screen/sign_up/password/presentation/bloc/password_bloc.dart';
import 'package:code_example/features/auth/presentation/screens/sign_up_screen/sign_up/password/presentation/widgets/requirements_column.dart';
import 'package:code_example/features/auth/presentation/screens/sign_up_screen/style_constants.dart';

class PasswordScreen extends StatelessWidget {
  final String? phone;
  final String? email;
  final String? password;
  final String? nickname;
  final String? fullName;
  final DateTime? birthday;

  const PasswordScreen({
    Key? key,
    required this.phone,
    required this.email,
    this.password,
    this.nickname,
    this.fullName,
    this.birthday,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final passwordController = TextEditingController(text: password);
    final confirmPasswordController = TextEditingController(text: password);

    String? passwordToSubmit = password;

    return BlocProvider(
      create: (context) => password != null
          ? (PasswordBloc()..add(const PasswordEvent.enableSubmit()))
          : PasswordBloc(),
      child: BlocConsumer<PasswordBloc, PasswordState>(
        listener: (context, state) {
          state.maybeWhen(
            validationSuccess: (value) {
              AutoRouter.of(context).replace(
                NicknameRoute(
                  phone: phone,
                  email: email,
                  password: value,
                  nickname: nickname,
                  fullName: fullName,
                  birthday: birthday,
                ),
              );
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
          return Scaffold(
            resizeToAvoidBottomInset: true,
            appBar: EmptyAppBar(
              onPressed: () => AutoRouter.of(context).replace(
                PhoneOrEmailRoute(
                  phone: phone,
                  email: email,
                  password: null,
                  nickname: nickname,
                  fullName: fullName,
                  birthday: birthday,
                ),
              ),
            ),
            body: GestureDetector(
              onTap: () {
                FocusManager.instance.primaryFocus?.unfocus();
              },
              child: SingleChildScrollView(
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
                        validator: (String? value) {
                          BlocProvider.of<PasswordBloc>(context).add(
                            const PasswordEvent.disableSubmit(),
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
                    RequirementsColumn(passwordController: passwordController),
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
                        onFieldReady: (value) {
                          passwordToSubmit = value;
                        },
                        validator: (String? value) {
                          BlocProvider.of<PasswordBloc>(context).add(
                            const PasswordEvent.disableSubmit(),
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
                            BlocProvider.of<PasswordBloc>(context)
                                .add(const PasswordEvent.disableSubmit());
                            return null;
                          }
                          BlocProvider.of<PasswordBloc>(context).add(
                            const PasswordEvent.enableSubmit(),
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
                                BlocProvider.of<PasswordBloc>(context).add(
                                  PasswordEvent.submit(passwordToSubmit!),
                                );
                              }
                            },
                            validationSuccess: (value) => () {
                              AutoRouter.of(context).replace(
                                NicknameRoute(
                                  phone: phone,
                                  email: email,
                                  password: value,
                                  nickname: nickname,
                                  fullName: fullName,
                                  birthday: birthday,
                                ),
                              );
                            },
                            orElse: () => null,
                          ),
                          child: Text(AppLocalizations.of(context)!.next),
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
