import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:code_example/common/app_colors/app_colors.dart';
import 'package:code_example/common/ui_kit/app_bars/empty_app_bar.dart';
import 'package:code_example/common/ui_kit/buttons/gradient_button.dart';
import 'package:code_example/common/ui_kit/ui_constants.dart';
import 'package:code_example/core/presentation/routing/app_router.gr.dart';
import 'package:code_example/features/auth/presentation/screens/password_recovery_screen/subflows/forgot_password/bloc/recovery_phone_or_email_bloc.dart';
import 'package:code_example/features/auth/presentation/screens/password_recovery_screen/subflows/forgot_password/widgets/forgot_password_text.dart';
import 'package:code_example/features/auth/presentation/screens/password_recovery_screen/subflows/forgot_password/widgets/forgot_password_title.dart';
import 'package:code_example/features/auth/presentation/screens/password_recovery_screen/subflows/forgot_password/widgets/recovery_email_input/recovery_email_input.dart';
import 'package:code_example/features/auth/presentation/screens/password_recovery_screen/subflows/forgot_password/widgets/recovery_phone_input/recovery_phone_input_screen.dart';
import 'package:code_example/features/auth/presentation/screens/sign_in_screen/presentation/widgets/or_text.dart';
import 'package:code_example/features/auth/presentation/screens/sign_up_screen/style_constants.dart';

class ForgotPasswordScreen extends StatelessWidget {
  final String? phone;
  final String? email;

  const ForgotPasswordScreen({Key? key, this.phone, this.email})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final phoneController = TextEditingController(text: phone);
    final emailController = TextEditingController(text: email);

    String? phoneNumberToSubmit;
    String? emailToSubmit;

    return BlocProvider(
      create: (context) => RecoveryPhoneOrEmailBloc(),
      child: BlocBuilder<RecoveryPhoneOrEmailBloc, RecoveryPhoneOrEmailState>(
        builder: (context, state) {
          final phoneOrEmailBloc =
              BlocProvider.of<RecoveryPhoneOrEmailBloc>(context);

          return Scaffold(
            resizeToAvoidBottomInset: true,
            appBar: EmptyAppBar(
              onPressed: () {
                AutoRouter.of(context).pop(
                  const SignInRoute(),
                );
              },
            ),
            body: GestureDetector(
              onTap: () {
                FocusManager.instance.primaryFocus?.unfocus();
              },
              child: DefaultTabController(
                length: UIConstants.tabBarLength,
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      const SizedBox(height: gapFromAppBar),
                      const ForgotPasswordTitle(),
                      const SizedBox(height: gapFromTitle),
                      const ForgotPasswordText(),
                      SizedBox(
                        height: tabBarHeight,
                        child: TabBar(
                          onTap: (index) {
                            switch (index) {
                              case 0:
                                emailController.clear();
                                phoneOrEmailBloc.add(
                                    const RecoveryPhoneOrEmailEvent
                                        .switchToPhone());
                                break;
                              case 1:
                                phoneController.clear();
                                phoneOrEmailBloc.add(
                                    const RecoveryPhoneOrEmailEvent
                                        .switchToEmail());
                            }
                          },
                          padding: const EdgeInsets.only(
                            left: textInputVerticalPadding,
                            right: textInputVerticalPadding,
                          ),
                          splashFactory:
                              Theme.of(context).tabBarTheme.splashFactory,
                          indicatorWeight: UIConstants.tabBarIndicatorWeight,
                          labelColor: AppColors.appBarTitle,
                          unselectedLabelColor: AppColors.textDetail,
                          indicatorColor:
                              Theme.of(context).tabBarTheme.indicatorColor,
                          tabs: [
                            Text(
                              AppLocalizations.of(context)!.phone,
                            ),
                            Text(
                              AppLocalizations.of(context)!.email,
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: widePadding,
                          right: widePadding,
                          top: widePadding,
                        ),
                        child: state.when(
                          phone: () => RecoveryPhoneInput(
                            controller: phoneController,
                            phone: phone ?? phoneNumberToSubmit,
                            buttonText: AppLocalizations.of(context)!.sendCode,
                          ),
                          email: () => RecoveryEmailInput(
                            controller: emailController,
                            email: email ?? emailToSubmit,
                            buttonText: AppLocalizations.of(context)!.sendCode,
                          ),
                        ),
                      ),
                      const SizedBox(height: disclaimerHorizontalPadding),
                      const OrText(),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: widePadding,
                          vertical: widePadding,
                        ),
                        child: GradientButton(
                          buttonText:
                              AppLocalizations.of(context)!.createAccount,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
