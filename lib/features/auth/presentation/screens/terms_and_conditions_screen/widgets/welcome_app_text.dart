import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:code_example/common/app_colors/app_colors.dart';

class WelcomeAppText extends StatelessWidget {
  const WelcomeAppText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      AppLocalizations.of(context)!.welcomeApp,
      style: Theme.of(context)
          .textTheme
          .bodyLarge!
          .copyWith(color: AppColors.hintText),
      textAlign: TextAlign.start,
    );
  }
}