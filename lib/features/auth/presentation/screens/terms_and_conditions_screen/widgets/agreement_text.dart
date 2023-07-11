import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:code_example/common/app_colors/app_colors.dart';

class AgreementText extends StatelessWidget {
  const AgreementText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      AppLocalizations.of(context)!.ourAgreement,
      style: Theme.of(context)
          .textTheme
          .headlineMedium!
          .copyWith(color: AppColors.hintText),
      textAlign: TextAlign.start,
    );
  }
}
