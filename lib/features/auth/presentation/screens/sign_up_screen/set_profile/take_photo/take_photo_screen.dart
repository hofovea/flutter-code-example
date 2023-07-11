import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:code_example/common/app_colors/app_colors.dart';
import 'package:code_example/core/presentation/routing/app_router.gr.dart';
import 'package:code_example/di/di_container.dart' as di;
import 'package:code_example/common/app_icons/app_icons.dart';
import 'package:code_example/common/ui_kit/app_bars/photo_app_bar.dart';
import 'package:code_example/features/auth/presentation/screens/gallery_image_picker_screen/gallery_image_picker_style_constants.dart';
import 'package:code_example/features/auth/presentation/screens/gallery_image_picker_screen/style_constants.dart';
import 'package:code_example/features/auth/presentation/screens/gallery_image_picker_screen/widgets/camera_button/camera_button.dart';
import 'package:code_example/features/auth/presentation/screens/sign_up_screen/set_profile/take_photo/bloc/take_photo_bloc.dart';
import 'package:code_example/features/auth/presentation/screens/sign_up_screen/set_profile/take_photo/widgets/camera_access_denied.dart';

class TakePhotoScreen extends StatefulWidget {
  final bool editProfile;

  const TakePhotoScreen({
    Key? key,
    this.editProfile = false,
  }) : super(key: key);

  @override
  State<TakePhotoScreen> createState() => _TakePhotoScreenState();
}

class _TakePhotoScreenState extends State<TakePhotoScreen>
    with WidgetsBindingObserver {
  late CameraController cameraController;

  late Future<void> initializeControllerFuture;

  late List<CameraDescription> cameras;

  TakePhotoBloc? takePhotoBloc;

  var openedSettings = false;

  var direction = 1;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) async {
    if (Platform.isAndroid &&
        state == AppLifecycleState.resumed &&
        openedSettings == true) {
      openedSettings == false;
      takePhotoBloc?.add(
        const TakePhotoEvent.askPermission(),
      );
    } else if (state == AppLifecycleState.paused) {
      openedSettings = true;
    }
  }

  void initCamera() {
    cameras = di.serviceLocator<List<CameraDescription>>();
    initController(direction);
  }

  void initController([int direction = 0]) {
    cameraController = CameraController(
      cameras[direction],
      ResolutionPreset.max,
      enableAudio: false,
    );

    initializeControllerFuture = cameraController.initialize();
  }

  @override
  void dispose() {
    disposeCamera();
    super.dispose();
  }

  void disposeCamera() {
    cameraController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          TakePhotoBloc()..add(const TakePhotoEvent.askPermission()),
      child: BlocConsumer<TakePhotoBloc, TakePhotoState>(
        listener: (context, state) {
          state.maybeWhen(
              accessGranted: () {
                initCamera();
              },
              photoTaken: () async {
                final image = await cameraController.takePicture();

                final imageFile = File(image.path);

                AutoRouter.of(context).replace(CropPhotoRoute(
                  imageFile: imageFile,
                  editProfile: widget.editProfile,
                ));
              },
              frontCamera: () {
                initController(direction);
              },
              backCamera: () {
                initController(direction);
              },
              orElse: () {});
        },
        builder: (context, state) {
          takePhotoBloc = BlocProvider.of<TakePhotoBloc>(context);

          return state.maybeWhen(
            accessGranted: () => Scaffold(
              appBar: PhotoAppBar(
                onPressed: () {
                  context.router.replace(
                      GalleryImagePickerRoute(editProfile: widget.editProfile));
                },
              ),
              body: FutureBuilder(
                future: initializeControllerFuture,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return Stack(
                      fit: StackFit.expand,
                      children: [
                        FractionallySizedBox(
                            heightFactor: 1,
                            child: CameraPreview(cameraController)),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                right: rightPaddingSwitchCameraButton,
                                bottom: bottomPaddingSwitchCameraButton),
                            child: CameraButton(
                              iconSize: 50,
                              iconData: AppIcons.arrowCirclePath,
                              onPressed: () {
                                direction = direction == 1 ? 0 : 1;
                                BlocProvider.of<TakePhotoBloc>(context).add(
                                  TakePhotoEvent.switchCamera(direction),
                                );
                              },
                            ),
                          ),
                        ),
                        Positioned(
                          left: (MediaQuery.of(context).size.width - 100) / 2,
                          bottom: 60,
                          child: SizedBox(
                            height: 100,
                            width: 100,
                            child: RawMaterialButton(
                              fillColor: cameraButtonBackgroundColor,
                              onPressed: () =>
                                  BlocProvider.of<TakePhotoBloc>(context)
                                      .add(const TakePhotoEvent.takePhoto()),
                              shape: const CircleBorder(
                                side: BorderSide(
                                  width: takePhotoButtonBorderWidth,
                                  color: AppColors.textDetail,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  } else {
                    return const Center(
                      child: CupertinoActivityIndicator(
                        radius: initialLoadingIndicatorRadius,
                      ),
                    );
                  }
                },
              ),
            ),
            accessDenied: () => const CameraAccessDenied(),
            orElse: () => const Scaffold(
              body: Center(
                child: CupertinoActivityIndicator(
                  radius: initialLoadingIndicatorRadius,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
