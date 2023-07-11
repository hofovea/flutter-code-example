import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:code_example/common/app_colors/app_colors.dart';
import 'package:code_example/features/auth/presentation/screens/sign_up_screen/style_constants.dart';
import 'package:code_example/features/auth/presentation/screens/terms_and_conditions_screen/widgets/bullet_list_item.dart';

class CommitmentsBulletList extends StatelessWidget {
  const CommitmentsBulletList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BulletListItem(
          text: Text(
            AppLocalizations.of(context)!.atLeastYearsOld,
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: AppColors.hintText),
          ),
        ),
        const SizedBox(height: widePadding),
        BulletListItem(
          text: Text(
            AppLocalizations.of(context)!.mustNotProhibit,
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: AppColors.hintText),
          ),
        ),
        const SizedBox(height: widePadding),
        BulletListItem(
          text: Text(
            AppLocalizations.of(context)!.disabledAccountFor,
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: AppColors.hintText),
          ),
        ),
        const SizedBox(height: widePadding),
        BulletListItem(
          text: Text(
            AppLocalizations.of(context)!.convictedOffender,
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: AppColors.hintText),
          ),
        ),
        const SizedBox(height: widePadding),
        Align(
          alignment: Alignment.topLeft,
          child: RichText(
            text: TextSpan(
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: AppColors.hintText),
              children: [
                TextSpan(
                  text: AppLocalizations.of(context)!.howUseInterngram,
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .copyWith(color: AppColors.hintText),
                ),
                TextSpan(text: AppLocalizations.of(context)!.providingSafe),
              ],
            ),
          ),
        ),
        const SizedBox(height: widePadding),
        BulletListItem(
          text: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppLocalizations.of(context)!.canNotImpersonate,
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(color: AppColors.hintText),
              ),
              Text(
                AppLocalizations.of(context)!.doNotDisclose,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(color: AppColors.hintText),
              ),
            ],
          ),
        ),
        const SizedBox(height: widePadding),
        BulletListItem(
          text: Text(
            AppLocalizations.of(context)!.canNotDoUnlawful,
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(color: AppColors.hintText),
          ),
        ),
        const SizedBox(height: widePadding),
        BulletListItem(
          text: Text(
            AppLocalizations.of(context)!.canNotViolate,
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(color: AppColors.hintText),
          ),
        ),
        const SizedBox(height: widePadding),
        BulletListItem(
          text: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppLocalizations.of(context)!.canNotInterfere,
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(color: AppColors.hintText),
              ),
              Text(
                AppLocalizations.of(context)!.thisIncludes,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(color: AppColors.hintText),
              ),
            ],
          ),
        ),
        const SizedBox(height: widePadding),
        BulletListItem(
          text: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppLocalizations.of(context)!.canNotAttemptCreate,
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(color: AppColors.hintText),
              ),
              Text(
                AppLocalizations.of(context)!.includesCreating,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(color: AppColors.hintText),
              ),
            ],
          ),
        ),
        const SizedBox(height: widePadding),
        BulletListItem(
          text: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppLocalizations.of(context)!.canNotSell,
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(color: AppColors.hintText),
              ),
              Text(
                AppLocalizations.of(context)!.includesAttemptsBuy,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(color: AppColors.hintText),
              ),
            ],
          ),
        ),
        const SizedBox(height: widePadding),
        BulletListItem(
          text: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppLocalizations.of(context)!.canNotPost,
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(color: AppColors.hintText),
              ),
              Text(
                AppLocalizations.of(context)!.mayUseWork,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(color: AppColors.hintText),
              ),
            ],
          ),
        ),
        const SizedBox(height: widePadding),
        BulletListItem(
          text: Text(
            AppLocalizations.of(context)!.canNotModify,
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(color: AppColors.hintText),
          ),
        ),
        const SizedBox(height: widePadding),
        BulletListItem(
          text: Text(
            AppLocalizations.of(context)!.canNotUseDomain,
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(color: AppColors.hintText),
          ),
        ),
      ],
    );
  }
}
