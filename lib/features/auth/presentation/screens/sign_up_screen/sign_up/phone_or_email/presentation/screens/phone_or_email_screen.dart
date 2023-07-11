import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:code_example/common/app_colors/app_colors.dart';
import 'package:code_example/common/ui_kit/app_bars/empty_app_bar.dart';
import 'package:code_example/common/ui_kit/ui_constants.dart';
import 'package:code_example/features/auth/presentation/screens/sign_up_screen/sign_up/phone_or_email/presentation/widgets/email_input.dart';
import 'package:code_example/features/auth/presentation/screens/sign_up_screen/sign_up/phone_or_email/presentation/widgets/enter_phone_or_email_title.dart';
import 'package:code_example/features/auth/presentation/screens/sign_up_screen/sign_up/phone_or_email/presentation/widgets/log_in_row.dart';
import 'package:code_example/features/auth/presentation/screens/sign_up_screen/sign_up/phone_or_email/presentation/widgets/phone_input.dart';
import 'package:code_example/features/auth/presentation/screens/sign_up_screen/sign_up/phone_or_email/presentation/widgets/terms_and_conditions_row.dart';
import 'package:code_example/features/auth/presentation/screens/sign_up_screen/style_constants.dart';
import 'package:code_example/features/auth/presentation/screens/sign_up_screen/sign_up/phone_or_email/presentation/bloc/phone_or_email_bloc.dart';

class PhoneOrEmailScreen extends StatelessWidget {
  final String? phone;
  final String? email;
  final String? password;
  final String? nickname;
  final String? fullName;
  final DateTime? birthday;

  const PhoneOrEmailScreen({
    Key? key,
    this.phone,
    this.email,
    this.password,
    this.nickname,
    this.fullName,
    this.birthday,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final phoneController = TextEditingController(text: phone);
    final emailController = TextEditingController(text: email);

    String? phoneNumberToSubmit;
    String? emailToSubmit;

    return BlocProvider(
      create: (context) => email != null
          ? (PhoneOrEmailBloc()..add(const PhoneOrEmailEvent.switchToEmail()))
          : PhoneOrEmailBloc(),
      child: BlocBuilder<PhoneOrEmailBloc, PhoneOrEmailState>(
        builder: (context, state) {
          final phoneOrEmailBloc = BlocProvider.of<PhoneOrEmailBloc>(context);

          return Scaffold(
            resizeToAvoidBottomInset: true,
            appBar: const EmptyAppBar(),
            body: GestureDetector(
              onTap: () {
                FocusManager.instance.primaryFocus?.unfocus();
              },
              child: DefaultTabController(
                initialIndex: email != null ? 1 : 0,
                length: UIConstants.tabBarLength,
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      const SizedBox(height: gapFromAppBar),
                      const EnterPhoneOrEmailTitle(),
                      const SizedBox(height: gapFromTitle),
                      SizedBox(
                        height: tabBarHeight,
                        child: TabBar(
                          onTap: (index) {
                            switch (index) {
                              case 0:
                                emailController.clear();
                                phoneOrEmailBloc.add(
                                    const PhoneOrEmailEvent.switchToPhone());
                                break;
                              case 1:
                                phoneController.clear();
                                phoneOrEmailBloc.add(
                                    const PhoneOrEmailEvent.switchToEmail());
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
                          phone: () => PhoneInput(
                            controller: phoneController,
                            phone: phone ?? phoneNumberToSubmit,
                            buttonText: AppLocalizations.of(context)!.next,
                            password: password,
                            nickname: nickname,
                            fullName: fullName,
                            birthday: birthday,
                          ),
                          email: () => EmailInput(
                            controller: emailController,
                            email: email ?? emailToSubmit,
                            buttonText: AppLocalizations.of(context)!.next,
                            password: password,
                            nickname: nickname,
                            fullName: fullName,
                            birthday: birthday,
                          ),
                        ),
                      ),
                      const TermsAndConditionsRow(),
                      const SizedBox(height: gapFromTermsAndConditions),
                      const LogInRow(),
                      const SizedBox(height: gapFromTermsAndConditions),
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
