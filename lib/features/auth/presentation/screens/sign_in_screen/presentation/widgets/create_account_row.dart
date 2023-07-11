import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:code_example/common/app_colors/app_colors.dart';

class CreateAccountRow extends StatelessWidget {
  final void Function() onTap;

  const CreateAccountRow({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          AppLocalizations.of(context)!.notMember,
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(color: AppColors.hintText),
        ),
        GestureDetector(
          onTap: onTap,
          child: Text(
            AppLocalizations.of(context)!.createAnAccount,
            style: Theme.of(context)
                .textTheme
                .displayMedium!
                .copyWith(color: AppColors.forgotPassword),
          ),
        ),
      ],
    );
  }
}
