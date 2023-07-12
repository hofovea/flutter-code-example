import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:code_example/common/app_colors/app_colors.dart';
import 'package:code_example/features/auth/presentation/screens/sign_up_screen/style_constants.dart';

class ProvideAppService extends StatelessWidget {
  const ProvideAppService({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: titlePadding),
      child: Text(
        AppLocalizations.of(context)!.provideAppService,
        style: Theme.of(context)
            .textTheme
            .bodyLarge!
            .copyWith(color: AppColors.hintText),
        textAlign: TextAlign.start,
      ),
    );
  }
}
