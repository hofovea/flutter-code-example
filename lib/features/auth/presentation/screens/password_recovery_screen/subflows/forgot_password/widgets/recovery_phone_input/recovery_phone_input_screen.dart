import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:code_example/common/ui_kit/text_fields/phone_text_field.dart';
import 'package:code_example/core/presentation/routing/app_router.gr.dart';
import 'package:code_example/core/presentation/validation/validation_util.dart';
import 'package:code_example/core/presentation/wrappers/connectivity_wrapper/bloc/connection_status_bloc.dart';
import 'package:code_example/features/auth/presentation/screens/password_recovery_screen/subflows/forgot_password/widgets/recovery_phone_input/bloc/recovery_phone_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:code_example/features/auth/presentation/screens/sign_up_screen/style_constants.dart';

class RecoveryPhoneInput extends StatelessWidget {
  final String buttonText;
  final TextEditingController? controller;
  final String? phone;

  const RecoveryPhoneInput({
    Key? key,
    required this.phone,
    required this.buttonText,
    this.controller,
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
              ? (RecoveryPhoneBloc()
                ..add(
                  const RecoveryPhoneEvent.enableSubmit(),
                ))
              : RecoveryPhoneBloc(),
          child: BlocConsumer<RecoveryPhoneBloc, RecoveryPhoneState>(
            listener: (context, state) {
              state.maybeWhen(
                validationPhoneSuccess: (phone) {
                  context.router.replace(
                    VerificationCodeRoute(
                        phone: phone,
                        onVerificationSuccess: (BuildContext newContext) {
                          newContext.router.replace(
                            RecoveryPasswordInputRoute(
                              phone: phoneNumberToSubmit,
                              email: null,
                            ),
                          );
                        },
                        onAppBarActionPressed: (BuildContext newContext) {
                          newContext.router.replace(
                            ForgotPasswordRoute(phone: phone),
                          );
                        },
                        onChangeAuthMethodPressed: (BuildContext newContext) {
                          newContext.router.replace(
                            ForgotPasswordRoute(phone: phone),
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
                  PhoneTextField(
                    controller: controller,
                    onFieldReady: (value) {
                      phoneNumberToSubmit = value;
                    },
                    formErrorsStream: BlocProvider.of<RecoveryPhoneBloc>(
                            context)
                        .stream
                        .map(
                          (state) => state.maybeWhen(
                            validationFailurePhoneIsNotValid: () =>
                                AppLocalizations.of(context)!.phoneNumberError,
                            validationFailurePhoneUnknown: () =>
                                AppLocalizations.of(context)!.unknownError,
                            validationFailureAccountNotFound: () =>
                                AppLocalizations.of(context)!.accountNotExists,
                            orElse: () => null,
                          ),
                        ),
                    validator: (String? value) {
                      BlocProvider.of<RecoveryPhoneBloc>(context).add(
                        const RecoveryPhoneEvent.disableSubmit(),
                      );
                      if (value == null || value.isEmpty) {
                        return AppLocalizations.of(context)!.requiredFieldError;
                      } else if (value.length != phoneNumberLength) {
                        return AppLocalizations.of(context)!.phoneNumberError;
                      }
                      BlocProvider.of<RecoveryPhoneBloc>(context).add(
                        const RecoveryPhoneEvent.enableSubmit(),
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
                                    BlocProvider.of<RecoveryPhoneBloc>(context)
                                        .add(
                                      RecoveryPhoneEvent.trySubmitPhone(
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
