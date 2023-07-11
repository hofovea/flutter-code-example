import 'dart:typed_data';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:code_example/common/app_colors/app_colors.dart';
import 'package:code_example/common/ui_kit/app_bars/empty_app_bar.dart';
import 'package:code_example/core/presentation/routing/app_router.gr.dart';
import 'package:code_example/features/auth/presentation/screens/sign_up_screen/set_profile/add_photo/bloc/add_photo_bloc.dart';
import 'package:code_example/features/auth/presentation/screens/sign_up_screen/set_profile/add_photo/widgets/add_photo_title.dart';
import 'package:code_example/features/auth/presentation/screens/sign_up_screen/style_constants.dart';

class AddPhotoScreen extends StatelessWidget {
  final Uint8List? imageBytes;

  const AddPhotoScreen({
    Key? key,
    this.imageBytes,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Uint8List? avatarToSubmit;

    return BlocProvider(
      create: (context) => imageBytes != null
          ? (AddPhotoBloc()..add(AddPhotoEvent.validatePhoto(imageBytes!)))
          : AddPhotoBloc(),
      child: BlocConsumer<AddPhotoBloc, AddPhotoState>(
        listener: (context, state) {
          state.maybeWhen(
            changed: () {
              AutoRouter.of(context).replace(
                GalleryImagePickerRoute(),
              );
            },
            succeed: () {
              avatarToSubmit = imageBytes;
            },
            orElse: () {
              avatarToSubmit = null;
            },
          );
        },
        builder: (context, state) {
          return Scaffold(
            appBar: EmptyAppBar(
              onPressed: () {},
            ),
            body: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Center(
                child: Column(
                  children: [
                    const SizedBox(height: gapFromAppBar),
                    const AddPhotoTitle(),
                    Text(
                      AppLocalizations.of(context)!.addPhotoDescription,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.labelSmall!.copyWith(
                            color: AppColors.subtitle,
                          ),
                    ),
                    const SizedBox(height: gapFromSubtitle),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: avatarInvalidBorderWidth,
                          color: state.maybeWhen(
                            invalid: () => AppColors.error,
                            orElse: () => AppColors.transparentColor,
                          ),
                        ),
                      ),
                      child: CircleAvatar(
                        backgroundColor: AppColors.textFieldBorder,
                        backgroundImage: state.maybeWhen(
                          deleted: () => null,
                          initial: () => null,
                          invalid: () => MemoryImage(imageBytes!),
                          succeed: () => MemoryImage(imageBytes!),
                          orElse: () => null,
                        ),
                        radius: avatarRadius,
                      ),
                    ),
                    const SizedBox(height: disclaimerBottomPadding),
                    Visibility(
                      visible: state.maybeWhen(
                        initial: () => true,
                        orElse: () => false,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          BlocProvider.of<AddPhotoBloc>(context).add(
                            const AddPhotoEvent.changePhoto(),
                          );
                        },
                        child: Text(
                          AppLocalizations.of(context)!.addPhoto,
                          style: Theme.of(context)
                              .textTheme
                              .displayMedium!
                              .copyWith(color: AppColors.secondary),
                        ),
                      ),
                    ),
                    Visibility(
                      visible: state.maybeWhen(
                        succeed: () => true,
                        deleted: () => true,
                        orElse: () => false,
                      ),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              BlocProvider.of<AddPhotoBloc>(context).add(
                                const AddPhotoEvent.changePhoto(),
                              );
                            },
                            child: Text(
                              AppLocalizations.of(context)!.changeProfilePhoto,
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium!
                                  .copyWith(color: AppColors.secondary),
                            ),
                          ),
                          const SizedBox(height: disclaimerBottomPadding),
                          GestureDetector(
                            onTap: () {
                              BlocProvider.of<AddPhotoBloc>(context).add(
                                const AddPhotoEvent.deletePhoto(),
                              );
                            },
                            child: Text(
                              AppLocalizations.of(context)!.deleteProfilePhoto,
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium!
                                  .copyWith(color: AppColors.error),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: widePadding),
                    Visibility(
                      visible: state.maybeWhen(
                        initial: () => true,
                        orElse: () => false,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: widePadding),
                        child: Text(
                          AppLocalizations.of(context)!.photoRequirements,
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                color: state.maybeWhen(
                                  invalid: () => AppColors.error,
                                  orElse: () => AppColors.textDetail,
                                ),
                              ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: widePadding),
                      child: SizedBox(
                        width: buttonWidth,
                        height: buttonHeight,
                        child: ElevatedButton(
                          onPressed: state.maybeWhen(
                            invalid: () => null,
                            orElse: () => () {
                              context.router.replace(
                                CityRoute(avatar: avatarToSubmit),
                              );
                            },
                          ),
                          child: Text(
                            AppLocalizations.of(context)!.next,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
