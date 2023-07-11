import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:code_example/common/app_colors/app_colors.dart';
import 'package:code_example/features/auth/presentation/screens/sign_up_screen/style_constants.dart';
import 'package:code_example/features/auth/presentation/screens/terms_and_conditions_screen/widgets/bullet_list_item.dart';

class ContentRemovalBulletList extends StatelessWidget {
  const ContentRemovalBulletList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BulletListItem(
          text: Text(
            AppLocalizations.of(context)!.canRemoveContent,
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: AppColors.hintText),
          ),
        ),
        const SizedBox(height: widePadding),
        BulletListItem(
          text: Text(
            AppLocalizations.of(context)!.contentWillNotBeDeleted,
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: AppColors.hintText),
          ),
        ),
        const SizedBox(height: widePadding),
        Padding(
          padding: const EdgeInsets.only(left: widePadding),
          child: Column(
            children: [
              BulletListItem(
                text: Text(
                  AppLocalizations.of(context)!.contentHasBeenUsed,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: AppColors.hintText),
                ),
              ),
              const SizedBox(height: widePadding),
              BulletListItem(
                text: Text(
                  AppLocalizations.of(context)!.deletionWithin,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: AppColors.hintText),
                ),
              ),
              const SizedBox(height: widePadding),
              BulletListItem(
                text: Text(
                  AppLocalizations.of(context)!.deletionRestrict,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: AppColors.hintText),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: widePadding),
                child: Column(
                  children: [
                    const SizedBox(height: widePadding),
                    BulletListItem(
                      text: Text(
                        AppLocalizations.of(context)!.investigateOrIdentify,
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .copyWith(color: AppColors.hintText),
                      ),
                    ),
                    const SizedBox(height: widePadding),
                    BulletListItem(
                      text: Text(
                        AppLocalizations.of(context)!.protectSafety,
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .copyWith(color: AppColors.hintText),
                      ),
                    ),
                    const SizedBox(height: widePadding),
                    BulletListItem(
                      text: Text(
                        AppLocalizations.of(context)!.complyWithLegal,
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .copyWith(color: AppColors.hintText),
                      ),
                    ),
                    const SizedBox(height: widePadding),
                    BulletListItem(
                      text: Text(
                        AppLocalizations.of(context)!.complyWithRequest,
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .copyWith(color: AppColors.hintText),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: widePadding),
              BulletListItem(
                text: Text(
                  AppLocalizations.of(context)!.contentWillBeRetained,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: AppColors.hintText),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: widePadding),
        BulletListItem(
          text: Text(
            AppLocalizations.of(context)!.deleteOrDisable,
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
