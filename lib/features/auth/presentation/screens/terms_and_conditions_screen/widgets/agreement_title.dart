import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:code_example/features/auth/presentation/screens/sign_up_screen/style_constants.dart';

class AgreementTitle extends StatelessWidget {
  const AgreementTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: titlePadding),
      child: Text(
        AppLocalizations.of(context)!.agreementHappens,
        style: Theme.of(context).textTheme.displayMedium,
        textAlign: TextAlign.start,
      ),
    );
  }
}
