import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:code_example/common/app_colors/app_colors.dart';
import 'package:code_example/common/ui_kit/logo/google_logo.dart';
import 'package:code_example/features/auth/presentation/screens/sign_up_screen/style_constants.dart';

class LogInGoogleRow extends StatelessWidget {
  final void Function() onTap;

  const LogInGoogleRow({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const GoogleLogo(),
        const SizedBox(width: titlePadding),
        GestureDetector(
          onTap: onTap,
          child: Text(
            AppLocalizations.of(context)!.logInGoogle,
            style: Theme.of(context)
                .textTheme
                .displayMedium!
                .copyWith(color: AppColors.primary),
          ),
        ),
      ],
    );
  }
}
