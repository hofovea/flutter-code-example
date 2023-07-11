import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:code_example/common/ui_kit/text_fields/phone_text_field.dart';
import 'package:code_example/core/presentation/routing/app_router.gr.dart';
import 'package:code_example/core/presentation/validation/validation_util.dart';
import 'package:code_example/core/presentation/wrappers/connectivity_wrapper/bloc/connection_status_bloc.dart';
import 'package:code_example/features/auth/presentation/screens/sign_up_screen/sign_up/phone_or_email/presentation/bloc/phone_bloc/phone_bloc.dart';
import 'package:code_example/features/auth/presentation/screens/sign_up_screen/style_constants.dart';

class PhoneInput extends StatelessWidget {
  final String buttonText;
  final TextEditingController? controller;
  final String? phone;
  final String? password;
  final String? nickname;
  final String? fullName;
  final DateTime? birthday;

  const PhoneInput({
    Key? key,
    required this.phone,
    required this.buttonText,
    this.controller,
    this.password,
    this.nickname,
    this.fullName,
    this.birthday,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String? phoneNumberToSubmit = phone;

    return BlocBuilder<ConnectionStatusBloc, ConnectionStatusState>(
      builder: (context, state) {
        bool isConnected = state.maybeWhen(
          connectionStatus: (isConnected) => isConnected,
          orElse: () => true,
        );
        return BlocProvider(
          create: (context) => phoneNumberToSubmit != null
              ? (PhoneBloc()..add(const PhoneEvent.enableSubmit()))
              : PhoneBloc(),
          child: BlocConsumer<PhoneBloc, PhoneState>(
            listener: (context, state) {
              state.maybeWhen(
                validationPhoneSuccess: (phone) {
                  AutoRouter.of(context).replace(
                    PasswordRoute(
                      phone: phone,
                      email: null,
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
                  PhoneTextField(
                    controller: controller,
                    onFieldReady: (value) {
                      phoneNumberToSubmit = value;
                    },
                    formErrorsStream: BlocProvider.of<PhoneBloc>(context)
                        .stream
                        .map(
                          (state) => state.maybeWhen(
                            validationFailurePhoneIsNotValid: () =>
                                AppLocalizations.of(context)!.phoneNumberError,
                            validationFailurePhoneUnknown: () =>
                                AppLocalizations.of(context)!.unknownError,
                            validationFailurePhoneExists: () =>
                                AppLocalizations.of(context)!
                                    .phoneAlreadyExistsError,
                            orElse: () => null,
                          ),
                        ),
                    validator: (String? value) {
                      BlocProvider.of<PhoneBloc>(context).add(
                        const PhoneEvent.disableSubmit(),
                      );
                      if (value == null || value.isEmpty) {
                        return AppLocalizations.of(context)!.requiredFieldError;
                      } else if (value.length != phoneNumberLength) {
                        return AppLocalizations.of(context)!.phoneNumberError;
                      }
                      BlocProvider.of<PhoneBloc>(context).add(
                        const PhoneEvent.enableSubmit(),
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
                                  if (phoneNumberToSubmit != null) {
                                    BlocProvider.of<PhoneBloc>(context).add(
                                      PhoneEvent.trySubmitPhone(
                                          phoneNumberToSubmit!),
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
