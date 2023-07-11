import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:code_example/common/app_colors/app_colors.dart';
import 'package:code_example/common/ui_kit/app_bars/empty_app_bar.dart';
import 'package:code_example/common/ui_kit/text_fields/validation_icon_text_field/validation_icon_text_field.dart';
import 'package:code_example/core/presentation/routing/app_router.gr.dart';
import 'package:code_example/core/presentation/validation/validation_util.dart';
import 'package:code_example/core/presentation/wrappers/connectivity_wrapper/bloc/connection_status_bloc.dart';
import 'package:code_example/features/auth/presentation/screens/sign_up_screen/set_profile/nickname/bloc/nickname_bloc.dart';
import 'package:code_example/features/auth/presentation/screens/sign_up_screen/style_constants.dart';

class NicknameScreen extends StatelessWidget {
  final String? phone;
  final String? email;
  final String? password;
  final String? nickname;
  final String? fullName;
  final DateTime? birthday;

  const NicknameScreen({
    Key? key,
    required this.phone,
    required this.email,
    required this.password,
    this.nickname,
    this.fullName,
    this.birthday,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final nicknameController = TextEditingController(text: nickname);
    String? nicknameToSubmit = nickname;

    return BlocBuilder<ConnectionStatusBloc, ConnectionStatusState>(
      builder: (context, state) {
        bool isConnected = state.maybeWhen(
          connectionStatus: (isConnected) => isConnected,
          orElse: () => true,
        );
        return BlocProvider(
          create: (context) => nickname != null
              ? (NicknameBloc()..add(const NicknameEvent.enableSubmit()))
              : NicknameBloc(),
          child: BlocConsumer<NicknameBloc, NicknameState>(
            listener: (context, state) {
              state.maybeWhen(
                validationSuccess: (nickname) {
                  AutoRouter.of(context).push(
                    FullNameRoute(
                      phone: phone,
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
              return Scaffold(
                resizeToAvoidBottomInset: true,
                appBar: EmptyAppBar(
                  onPressed: () => AutoRouter.of(context).replace(
                    PasswordRoute(
                      phone: phone,
                      email: email,
                      password: password,
                      nickname: null,
                      fullName: fullName,
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
                              AppLocalizations.of(context)!.createNicknameTitle,
                              style: Theme.of(context).textTheme.headlineLarge),
                        ),
                        Text(
                          '${AppLocalizations.of(context)!.createNicknameSubtitle}'
                          '\n${AppLocalizations.of(context)!.createNicknameSubtitleSecondary}',
                          textAlign: TextAlign.center,
                          style:
                              Theme.of(context).textTheme.labelSmall!.copyWith(
                                    color: AppColors.subtitle,
                                  ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: textInputVerticalPadding,
                            horizontal: widePadding,
                          ),
                          child: ValidationIconTextField(
                            controller: nicknameController,
                            onFieldReady: (value) {
                              nicknameToSubmit = value;
                            },
                            formErrorsStream:
                                BlocProvider.of<NicknameBloc>(context)
                                    .stream
                                    .map(
                                      (state) => state.maybeWhen(
                                        validationFailureNicknameExists: () =>
                                            AppLocalizations.of(context)!
                                                .nicknameAlreadyExistsError,
                                        validationFailureUnknown: () =>
                                            AppLocalizations.of(context)!
                                                .unknownError,
                                        orElse: () => null,
                                      ),
                                    ),
                            hintText:
                                AppLocalizations.of(context)!.nicknameHint,
                            validator: (String? value) {
                              NicknameBloc nicknameBloc =
                                  BlocProvider.of<NicknameBloc>(context);
                              nicknameBloc.add(
                                const NicknameEvent.disableSubmit(),
                              );
                              if (value == null || value.isEmpty) {
                                return AppLocalizations.of(context)!
                                    .requiredFieldError;
                              } else if (!nicknameValidationRegExp
                                  .hasMatch(value)) {
                                if (value.length < minNicknameLength) {
                                  return AppLocalizations.of(context)!
                                      .minLengthError(minNicknameLength);
                                } else if (value.length > maxNicknameLength) {
                                  return AppLocalizations.of(context)!
                                      .maxLengthError(maxNicknameLength);
                                } else {
                                  return AppLocalizations.of(context)!
                                      .invalidNicknameCharsError;
                                }
                              }
                              nicknameBloc.add(
                                const NicknameEvent.enableSubmit(),
                              );
                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: widePadding),
                          child: SizedBox(
                            width: buttonWidth,
                            height: buttonHeight,
                            child: ElevatedButton(
                              onPressed: isConnected
                                  ? state.maybeWhen(
                                      enabledSubmit: () => () {
                                        FocusManager.instance.primaryFocus
                                            ?.unfocus();
                                        if (nicknameToSubmit != null) {
                                          BlocProvider.of<NicknameBloc>(context)
                                              .add(
                                            NicknameEvent.trySubmit(
                                                nicknameToSubmit!),
                                          );
                                        }
                                      },
                                      loading: () => () {},
                                      orElse: () => null,
                                    )
                                  : null,
                              child: state.maybeWhen(
                                loading: () => CupertinoActivityIndicator(
                                  color:
                                      Theme.of(context).scaffoldBackgroundColor,
                                ),
                                orElse: () =>
                                    Text(AppLocalizations.of(context)!.next),
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
      },
    );
  }
}
