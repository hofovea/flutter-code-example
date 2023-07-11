import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cropperx/cropperx.dart';
import 'package:flutter/material.dart';

import 'package:code_example/common/ui_kit/app_bars/photo_app_bar.dart';
import 'package:code_example/core/presentation/routing/app_router.gr.dart';
import 'package:code_example/features/auth/presentation/screens/gallery_image_picker_screen/style_constants.dart';
import 'package:code_example/features/auth/presentation/screens/sign_up_screen/set_profile/take_photo/crop_photo/bloc/crop_photo_bloc.dart';
import 'package:code_example/features/auth/presentation/screens/sign_up_screen/style_constants.dart';

class CropPhotoScreen extends StatelessWidget {
  final File imageFile;
  final bool editProfile;

  const CropPhotoScreen({
    Key? key,
    required this.imageFile,
    this.editProfile = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cropperKey = GlobalKey();

    return BlocProvider(
      create: (context) => CropPhotoBloc()..add(const CropPhotoEvent.started()),
      child: BlocConsumer<CropPhotoBloc, CropPhotoState>(
        listener: (context, state) {
          state.maybeWhen(
              croppedPhotoReady: (imageBytes) {
                if (editProfile == true) {
                } else {
                  AutoRouter.of(context).push(
                    AddPhotoRoute(
                      imageBytes: imageBytes,
                    ),
                  );
                }
              },
              orElse: () {});
        },
        builder: (context, state) {
          return Scaffold(
            appBar: PhotoAppBar(
              onPressed: () {
                AutoRouter.of(context).replace(TakePhotoRoute(editProfile: editProfile));
              },
            ),
            body: Column(
              children: [
                Padding(
                  padding: bottomPadding,
                  child: FutureBuilder(
                      future: imageFile.readAsBytes(),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          return Cropper(
                            zoomScale: maxZoomScale,
                            overlayType: OverlayType.circle,
                            overlayColor: overlayColor,
                            cropperKey: cropperKey,
                            image: Image.memory(
                              snapshot.data as Uint8List,
                              fit: BoxFit.cover,
                              filterQuality: FilterQuality.high,
                            ),
                          );
                        }
                        return const Center(child: CupertinoActivityIndicator());
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: widePadding,
                    vertical: widePadding,
                  ),
                  child: SizedBox(
                    width: buttonWidth,
                    height: buttonHeight,
                    child: ElevatedButton(
                      onPressed: () {
                        BlocProvider.of<CropPhotoBloc>(context)
                            .add(CropPhotoEvent.cropPhoto(cropperKey));
                      },
                      child: Text(AppLocalizations.of(context)!.next),
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
