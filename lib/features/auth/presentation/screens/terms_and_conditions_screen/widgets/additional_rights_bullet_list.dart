import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:code_example/common/app_colors/app_colors.dart';
import 'package:code_example/features/auth/presentation/screens/sign_up_screen/style_constants.dart';
import 'package:code_example/features/auth/presentation/screens/terms_and_conditions_screen/widgets/bullet_list_item.dart';

class AdditionalRightsBulletList extends StatelessWidget {
  const AdditionalRightsBulletList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BulletListItem(
          text: Text(
            AppLocalizations.of(context)!.intellectualProperty,
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: AppColors.hintText),
          ),
        ),
        const SizedBox(height: widePadding),
        BulletListItem(
          text: Text(
            AppLocalizations.of(context)!.selectUsername,
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: AppColors.hintText),
          ),
        ),
        const SizedBox(height: widePadding),
        BulletListItem(
          text: Text(
            AppLocalizations.of(context)!.obtainWrittenPermission,
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: AppColors.hintText),
          ),
        ),
      ],
    );
  }
}
