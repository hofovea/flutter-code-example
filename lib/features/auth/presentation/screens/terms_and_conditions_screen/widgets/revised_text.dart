import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:code_example/common/app_colors/app_colors.dart';

class RevisedText extends StatelessWidget {
  const RevisedText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      AppLocalizations.of(context)!.revised,
      style: Theme.of(context)
          .textTheme
          .bodyLarge!
          .copyWith(color: AppColors.hintText),
      textAlign: TextAlign.start,
    );
  }
}
