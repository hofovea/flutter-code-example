import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:code_example/common/app_colors/app_colors.dart';
import 'package:code_example/features/auth/presentation/screens/gallery_image_picker_screen/gallery_image_picker_style_constants.dart';
import 'package:code_example/features/auth/presentation/screens/sign_up_screen/set_profile/take_photo/bloc/take_photo_bloc.dart';

class CameraAccessDenied extends StatelessWidget {
  const CameraAccessDenied({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: accessDeniedColumnHorizontalPadding,
            ),
            child: Column(
              children: [
                Text(
                  AppLocalizations.of(context)!.photosWithInterngram,
                  style: Theme.of(context).textTheme.headlineLarge,
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: accessDeniedColumnVerticalPadding,
                  ),
                  child: Text(
                    AppLocalizations.of(context)!.accessToCamera,
                    style: Theme.of(context).textTheme.titleMedium,
                    textAlign: TextAlign.center,
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  onPressed: () {
                    BlocProvider.of<TakePhotoBloc>(context).add(
                      const TakePhotoEvent.openSetting(),
                    );
                  },
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
      ),
    );
  }
}
