import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:code_example/common/app_colors/app_colors.dart';
import 'package:code_example/common/ui_kit/app_bars/empty_app_bar.dart';
import 'package:code_example/core/presentation/routing/app_router.gr.dart';
import 'package:code_example/core/presentation/validation/validation_util.dart';
import 'package:code_example/features/auth/presentation/screens/sign_up_screen/set_profile/birthday/bloc/birthday_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:code_example/features/auth/presentation/screens/sign_up_screen/style_constants.dart';
import 'package:intl/intl.dart';

class BirthdayScreen extends StatelessWidget {
  static final DateFormat _formatter = DateFormat(defaultDateFormat);

  final String? phone;
  final String? email;
  final String? password;
  final String? nickname;
  final String? fullName;
  final DateTime? birthday;

  const BirthdayScreen({
    Key? key,
    required this.phone,
    required this.email,
    required this.password,
    required this.nickname,
    required this.fullName,
    this.birthday,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BirthdayBloc? bloc;

    final datePickerController = TextEditingController(
        text: birthday != null ? _formatter.format(birthday!) : null);

    return BlocProvider(
      create: (context) => BirthdayBloc(),
      child: BlocConsumer<BirthdayBloc, BirthdayState>(
        listener: (context, state) {
          state.maybeWhen(
            datePickerUpdate: (DateTime value) {
              datePickerController.text = _formatter.format(value);
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
          bloc = BlocProvider.of<BirthdayBloc>(context);

          return Scaffold(
            resizeToAvoidBottomInset: true,
            appBar: EmptyAppBar(
              onPressed: () => AutoRouter.of(context).replace(
                FullNameRoute(
                  phone: phone,
                  email: email,
                  password: password,
                  nickname: nickname,
                  fullName: fullName,
                  birthday: null,
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
                          AppLocalizations.of(context)!.createBirthdayTitle,
                          style: Theme.of(context).textTheme.headlineLarge),
                    ),
                    Text(
                      AppLocalizations.of(context)!.createBirthdaySubtitle,
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
                      child: TextField(
                        controller: datePickerController,
                        readOnly: true,
                        onTap: () {
                          showCupertinoModalPopup(
                            context: context,
                            builder: (context) {
                              return Container(
                                color:
                                    Theme.of(context).scaffoldBackgroundColor,
                                height: datePickerHeight,
                                margin: EdgeInsets.zero,
                                padding: const EdgeInsets.only(
                                    bottom: datePickerBottomPadding),
                                child: CupertinoDatePicker(
                                  mode: CupertinoDatePickerMode.date,
                                  initialDateTime: newestDate,
                                  minimumDate: oldestDate,
                                  maximumDate: newestDate,
                                  onDateTimeChanged: (value) {
                                    bloc?.add(
                                      BirthdayEvent.datePickerChanged(value),
                                    );
                                  },
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: emptySpaceHeight,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: disclaimerBottomPadding,
                        horizontal: disclaimerHorizontalPadding,
                      ),
                      child: Text(
                        textAlign: TextAlign.center,
                        style:
                            Theme.of(context).textTheme.displaySmall!.copyWith(
                                  color: AppColors.textDetail,
                                ),
                        AppLocalizations.of(context)!.createBirthdayDisclaimer,
                      ),
                    ),
                    const Divider(),
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
                              datePickerUpdate: (value) => () {
                                    AutoRouter.of(context).replace(
                                      VerificationCodeRoute(
                                          phone: phone,
                                          email: email,
                                          password: password,
                                          nickname: nickname,
                                          fullName: fullName,
                                          birthday: value),
                                    );
                                  },
                              orElse: () => birthday != null
                                  ? () => AutoRouter.of(context).replace(
                                        VerificationCodeRoute(
                                          phone: phone,
                                          email: email,
                                          password: password,
                                          nickname: nickname,
                                          fullName: fullName,
                                          birthday: birthday!,
                                        ),
                                      )
                                  : null),
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
