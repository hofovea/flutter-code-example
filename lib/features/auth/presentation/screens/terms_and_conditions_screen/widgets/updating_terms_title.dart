import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:code_example/features/auth/presentation/screens/sign_up_screen/style_constants.dart';

class UpdatingTermsTitle extends StatelessWidget {
  const UpdatingTermsTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: titlePadding),
      child: Text(
        AppLocalizations.of(context)!.updatingTerms,
        style: Theme.of(context).textTheme.displayMedium,
        textAlign: TextAlign.start,
      ),
    );
  }
}
