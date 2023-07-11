import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:code_example/common/app_colors/app_colors.dart';
import 'package:code_example/core/presentation/routing/app_router.gr.dart';

class EmptyGallery extends StatelessWidget {
  const EmptyGallery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            AppLocalizations.of(context)!.emptyGallery,
            style: Theme.of(context).textTheme.headlineLarge,
            textAlign: TextAlign.center,
          ),
          TextButton(
            style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
                tapTargetSize: MaterialTapTargetSize.shrinkWrap),
            onPressed: () {
              AutoRouter.of(context).replace(
                TakePhotoRoute(),
              );
            },
            child: Text(
              AppLocalizations.of(context)!.openCameraButtonTitle,
              style: Theme.of(context).textTheme.labelSmall!.copyWith(
                    color: AppColors.primary,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
