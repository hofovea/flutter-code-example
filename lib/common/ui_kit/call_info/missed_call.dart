import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:code_example/common/app_icons/app_icons.dart';

class MissedCall extends StatelessWidget {
  const MissedCall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          AppIcons.phoneDownCircleFill,
          color: Theme.of(context).colorScheme.error,
        ),
        Text(AppLocalizations.of(context)!.missedCall)
      ],
    );
  }
}
