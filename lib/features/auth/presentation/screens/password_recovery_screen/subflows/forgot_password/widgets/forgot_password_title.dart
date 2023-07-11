import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:code_example/features/auth/presentation/screens/sign_up_screen/style_constants.dart';

class ForgotPasswordTitle extends StatelessWidget {
  const ForgotPasswordTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: descriptionPadding),
      child: Text(
        AppLocalizations.of(context)!.forgotPassword,
        style: Theme.of(context).textTheme.headlineLarge,
        textAlign: TextAlign.center,
      ),
    );
  }
}
