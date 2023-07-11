import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:code_example/common/ui_kit/text_fields/email_text_field.dart';
import 'package:code_example/core/presentation/routing/app_router.gr.dart';
import 'package:code_example/core/presentation/validation/validation_util.dart';
import 'package:code_example/core/presentation/wrappers/connectivity_wrapper/bloc/connection_status_bloc.dart';
import 'package:code_example/features/auth/presentation/screens/sign_up_screen/sign_up/phone_or_email/presentation/bloc/email_bloc/email_bloc.dart';
import 'package:code_example/features/auth/presentation/screens/sign_up_screen/style_constants.dart';

class EmailInput extends StatelessWidget {
  final String buttonText;
  final TextEditingController? controller;
  final String? email;
  final String? password;
  final String? nickname;
  final String? fullName;
  final DateTime? birthday;

  const EmailInput({
    Key? key,
    required this.email,
    required this.buttonText,
    this.controller,
    this.password,
    this.nickname,
    this.fullName,
    this.birthday,
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
              ? (EmailBloc()..add(const EmailEvent.enableSubmit()))
              : EmailBloc(),
          child: BlocConsumer<EmailBloc, EmailState>(
            listener: (context, state) {
              state.maybeWhen(
                validationEmailSuccess: (email) {
                  AutoRouter.of(context).replace(
                    PasswordRoute(
                      phone: null,
                      email: email,
                      password: password,
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
              return Column(
                children: [
                  EmailTextField(
                    controller: controller,
                    onFieldReady: (value) {
                      emailToSubmit = value;
                    },
                    formErrorsStream: BlocProvider.of<EmailBloc>(context)
                        .stream
                        .map(
                          (state) => state.maybeWhen(
                            validationFailureEmailIsNotValid: () =>
                                AppLocalizations.of(context)!.enterValidEmail,
                            validationFailureEmailExists: () =>
                                AppLocalizations.of(context)!
                                    .emailAlreadyExistsError,
                            validationFailureEmailUnknown: () =>
                                AppLocalizations.of(context)!.unknownError,
                            orElse: () => null,
                          ),
                        ),
                    validator: (String? value) {
                      BlocProvider.of<EmailBloc>(context).add(
                        const EmailEvent.disableSubmit(),
                      );
                      if (value == null || value.isEmpty) {
                        return AppLocalizations.of(context)!.requiredFieldError;
                      } else if (!emailValidationRegExp.hasMatch(value)) {
                        return AppLocalizations.of(context)!.enterValidEmail;
                      }
                      BlocProvider.of<EmailBloc>(context).add(
                        const EmailEvent.enableSubmit(),
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
                                    BlocProvider.of<EmailBloc>(context).add(
                                      EmailEvent.trySubmitEmail(emailToSubmit!),
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
