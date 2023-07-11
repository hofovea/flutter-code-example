import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:code_example/common/app_colors/app_colors.dart';

class ForgotPassword extends StatelessWidget {
  final void Function() onTap;

  const ForgotPassword({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        AppLocalizations.of(context)!.forgotPassword,
        style: Theme.of(context)
            .textTheme
            .displayMedium!
            .copyWith(color: AppColors.forgotPassword),
      ),
    );
  }
}
