import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:code_example/common/app_colors/app_colors.dart';
import 'package:code_example/common/ui_kit/app_bars/empty_app_bar.dart';
import 'package:code_example/common/ui_kit/text_fields/validation_icon_text_field/validation_icon_text_field.dart';
import 'package:code_example/core/presentation/routing/app_router.gr.dart';
import 'package:code_example/core/presentation/validation/validation_util.dart';
import 'package:code_example/features/auth/presentation/screens/sign_up_screen/set_profile/full_name/bloc/full_name_bloc.dart';
import 'package:code_example/features/auth/presentation/screens/sign_up_screen/style_constants.dart';

class FullNameScreen extends StatelessWidget {
  final String? phone;
  final String? email;
  final String? password;
  final String? nickname;
  final String? fullName;
  final DateTime? birthday;

  const FullNameScreen({
    Key? key,
    required this.phone,
    required this.email,
    required this.password,
    required this.nickname,
    this.fullName,
    this.birthday,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final fullNameController = TextEditingController(text: fullName);

    String? fullNameToSubmit = fullName;

    return BlocProvider(
      create: (context) => fullName != null
          ? (FullNameBloc()..add(const FullNameEvent.enableSubmit()))
          : FullNameBloc(),
      child: BlocBuilder<FullNameBloc, FullNameState>(
        builder: (context, state) {
          return Scaffold(
            resizeToAvoidBottomInset: true,
            appBar: EmptyAppBar(
              onPressed: () => AutoRouter.of(context).replace(
                NicknameRoute(
                  phone: phone,
                  email: email,
                  password: password,
                  nickname: nickname,
                  fullName: null,
                  birthday: birthday,
                ),
              ),
            ),
            body: GestureDetector(
              onTap: () {
                FocusManager.instance.primaryFocus?.unfocus();
              },
              child: Center(
                child: Column(
                  children: [
                    const SizedBox(height: gapFromAppBar),
                    Padding(
                      padding: const EdgeInsets.only(bottom: titlePadding),
                      child: Text(
                          AppLocalizations.of(context)!.createFullNameTitle,
                          style: Theme.of(context).textTheme.headlineLarge),
                    ),
                    Text(
                      AppLocalizations.of(context)!.createFullNameSubtitle,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.labelSmall!.copyWith(
                            color: AppColors.subtitle,
                          ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: textInputVerticalPadding,
                        horizontal: widePadding,
                      ),
                      child: ValidationIconTextField(
                        controller: fullNameController,
                        onFieldReady: (value) {
                          fullNameToSubmit = value;
                        },
                        hintText: AppLocalizations.of(context)!.fullNameHint,
                        validator: (String? value) {
                          FullNameBloc fullNameBloc =
                              BlocProvider.of<FullNameBloc>(context);
                          fullNameBloc.add(
                            const FullNameEvent.disableSubmit(),
                          );
                          if (value != null &&
                              !fullNameValidationRegExp.hasMatch(value) &&
                              value.isNotEmpty) {
                            if (value.length < minFullNameLength) {
                              return AppLocalizations.of(context)!
                                  .minLengthError(minFullNameLength);
                            } else if (value.length > maxFullNameLength) {
                              return AppLocalizations.of(context)!
                                  .maxLengthError(maxFullNameLength);
                            } else {
                              return AppLocalizations.of(context)!
                                  .invalidFullNameCharsError;
                            }
                          }
                          fullNameBloc.add(
                            const FullNameEvent.enableSubmit(),
                          );
                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.symmetric(horizontal: widePadding),
                      child: SizedBox(
                        width: buttonWidth,
                        height: buttonHeight,
                        child: ElevatedButton(
                          onPressed: state.maybeWhen(
                            enabledSubmit: () => () {
                              FocusManager.instance.primaryFocus?.unfocus();
                              AutoRouter.of(context).replace(
                                BirthdayRoute(
                                  phone: phone,
                                  email: email,
                                  password: password,
                                  nickname: nickname,
                                  fullName: fullNameToSubmit,
                                  birthday: birthday,
                                ),
                              );
                            },
                            orElse: () => null,
                          ),
                          child: Text(AppLocalizations.of(context)!.next),
                        ),
                      ),
                    )
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
