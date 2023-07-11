import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:code_example/common/app_colors/app_colors.dart';
import 'package:code_example/features/auth/presentation/screens/sign_up_screen/style_constants.dart';
import 'package:code_example/features/auth/presentation/screens/terms_and_conditions_screen/widgets/bullet_list_item.dart';

class ResponsibleBulletList extends StatelessWidget {
  const ResponsibleBulletList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BulletListItem(
          text: Text(
            AppLocalizations.of(context)!.ourServiceProvided,
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: AppColors.hintText),
          ),
        ),
        const SizedBox(height: widePadding),
        BulletListItem(
          text: Text(
            AppLocalizations.of(context)!.weDoNotControl,
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: AppColors.hintText),
          ),
        ),
        const SizedBox(height: widePadding),
        BulletListItem(
          text: Text(
            AppLocalizations.of(context)!.ourResponsibilityFor,
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
