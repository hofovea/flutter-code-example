import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:code_example/common/app_colors/app_colors.dart';
import 'package:code_example/core/presentation/routing/app_router.gr.dart';

class LogInRow extends StatelessWidget {
  const LogInRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          AppLocalizations.of(context)!.haveAnAccount,
          style: Theme.of(context)
              .textTheme
              .bodyLarge!
              .copyWith(color: AppColors.hintText),
        ),
        GestureDetector(
          onTap: () {
            AutoRouter.of(context).replace(
              const SignInRoute(),
            );
          },
          child: Text(
            AppLocalizations.of(context)!.logIn,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: AppColors.forgotPassword,
                  fontWeight: FontWeight.w500,
                ),
          ),
        ),
      ],
    );
  }
}
