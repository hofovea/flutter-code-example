import 'package:flutter/material.dart';
import 'package:code_example/common/app_colors/app_colors.dart';
import 'package:code_example/features/auth/presentation/screens/gallery_image_picker_screen/gallery_image_picker_style_constants.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class GalleryAccessDenied extends StatelessWidget {
  final VoidCallback? onPressed;
  const GalleryAccessDenied({Key? key, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: accessDeniedColumnHorizontalPadding,
          ),
          child: Column(
            children: [
              Text(
                AppLocalizations.of(context)!.galleryAccessDeniedTitle,
                style: Theme.of(context).textTheme.headlineLarge,
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: accessDeniedColumnVerticalPadding,
                ),
                child: Text(
                  AppLocalizations.of(context)!.galleryAccessDeniedSubtitle,
                  style: Theme.of(context).textTheme.titleMedium,
                  textAlign: TextAlign.center,
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap),
                onPressed: onPressed,
                child: Text(
                  AppLocalizations.of(context)!.allowAccessButtonTitle,
                  style: Theme.of(context).textTheme.labelSmall!.copyWith(
                        color: AppColors.primary,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
