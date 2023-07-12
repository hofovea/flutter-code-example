import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:code_example/common/app_colors/app_colors.dart';
import 'package:code_example/features/auth/presentation/screens/sign_up_screen/style_constants.dart';
import 'package:code_example/features/auth/presentation/screens/terms_and_conditions_screen/widgets/bullet_list_item.dart';

class AppServiceBulletList extends StatelessWidget {
  const AppServiceBulletList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BulletListItem(
          text: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppLocalizations.of(context)!.offerOpportunities,
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(color: AppColors.hintText),
              ),
              Text(
                AppLocalizations.of(context)!.peopleAreDifferent,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(color: AppColors.hintText),
              )
            ],
          ),
        ),
        const SizedBox(height: widePadding),
        BulletListItem(
          text: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppLocalizations.of(context)!.fosteringPositive,
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(color: AppColors.hintText),
              ),
              Text(
                AppLocalizations.of(context)!.developAndUseTools,
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
                AppLocalizations.of(context)!.developANdUseTech,
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(color: AppColors.hintText),
              ),
              Text(
                AppLocalizations.of(context)!.organisingInfo,
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
                AppLocalizations.of(context)!.ensuringAccess,
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(color: AppColors.hintText),
              ),
              Text(
                AppLocalizations.of(context)!.operateService,
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
                AppLocalizations.of(context)!.connectingBrands,
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(color: AppColors.hintText),
              ),
              Text(
                AppLocalizations.of(context)!.useDataFrom,
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
                AppLocalizations.of(context)!.researchAndInnovation,
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(color: AppColors.hintText),
              ),
              Text(
                AppLocalizations.of(context)!.useInformation,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(color: AppColors.hintText),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
