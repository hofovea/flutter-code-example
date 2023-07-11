import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:code_example/common/app_icons/app_icons.dart';

class OutgoingCall extends StatelessWidget {
  final int durationInMinutes;

  const OutgoingCall({
    required this.durationInMinutes,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          AppIcons.phoneArrowUpRight,
          color: Theme.of(context).scaffoldBackgroundColor,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppLocalizations.of(context)!.outgoingCall,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(color: Theme.of(context).scaffoldBackgroundColor),
            ),
            Text(
              AppLocalizations.of(context)!
                  .outgoingCallDuration(durationInMinutes),
              style: Theme.of(context)
                  .textTheme
                  .displaySmall
                  ?.copyWith(color: Theme.of(context).scaffoldBackgroundColor),
            ),
          ],
        ),
      ],
    );
  }
}
