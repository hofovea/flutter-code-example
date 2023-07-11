import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:code_example/common/app_colors/app_colors.dart';
import 'package:code_example/core/presentation/routing/app_router.gr.dart';

class TermsAndConditionsRow extends StatelessWidget {
  const TermsAndConditionsRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          AppLocalizations.of(context)!.signingUpTermsAndConditions,
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(color: AppColors.textDetail),
        ),
        GestureDetector(
          onTap: () {
            AutoRouter.of(context).push(
              const TermsAndConditionsRoute(),
            );
          },
          child: Text(
            AppLocalizations.of(context)!.termsAndConditions,
            style: Theme.of(context).textTheme.displaySmall!.copyWith(
                  color: AppColors.textDetail,
                  decoration: TextDecoration.underline,
                ),
          ),
        )
      ],
    );
  }
}
