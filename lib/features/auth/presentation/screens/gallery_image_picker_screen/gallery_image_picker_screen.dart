import 'dart:io';
import 'dart:typed_data';

import 'package:auto_route/auto_route.dart';
import 'package:cropperx/cropperx.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:code_example/common/app_icons/app_icons.dart';

import 'package:code_example/common/ui_kit/app_bars/library_app_bar.dart';
import 'package:code_example/core/presentation/routing/app_router.gr.dart';
import 'package:code_example/features/auth/presentation/screens/gallery_image_picker_screen/bloc/gallery_image_picker_bloc.dart';
import 'package:code_example/features/auth/presentation/screens/gallery_image_picker_screen/gallery_grid_bloc/gallery_grid_bloc.dart';
import 'package:code_example/features/auth/presentation/screens/gallery_image_picker_screen/gallery_image_picker_style_constants.dart';
import 'package:code_example/features/auth/presentation/screens/gallery_image_picker_screen/style_constants.dart';
import 'package:code_example/features/auth/presentation/screens/gallery_image_picker_screen/widgets/camera_button/camera_button.dart';
import 'package:code_example/features/auth/presentation/screens/gallery_image_picker_screen/widgets/empty_gallery/empty_gallery.dart';
import 'package:code_example/features/auth/presentation/screens/gallery_image_picker_screen/widgets/gallery_access_denied/gallery_access_denied.dart';
import 'package:photo_manager/photo_manager.dart';

class GalleryImagePickerScreen extends StatefulWidget {
  final Uint8List? imageBytes;
  final bool editProfile;

  const GalleryImagePickerScreen({Key? key, this.editProfile = false, this.imageBytes})
      : super(key: key);

  @override
  State<GalleryImagePickerScreen> createState() => _GalleryImagePickerScreenState();
}

class _GalleryImagePickerScreenState extends State<GalleryImagePickerScreen>
    with WidgetsBindingObserver {
  final _cropperKey = GlobalKey();
  GalleryImagePickerBloc? _galleryImagePickerBloc;
  bool _didOpenSettings = false;

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) async {
    if (Platform.isAndroid && _didOpenSettings && state == AppLifecycleState.resumed) {
      _galleryImagePickerBloc?.add(
        const GalleryImagePickerEvent.tryFetchPhotos(),
      );
    } else if (state == AppLifecycleState.paused) {}
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GalleryImagePickerBloc()
        ..add(
          const GalleryImagePickerEvent.tryFetchPhotos(),
        ),
      child: BlocConsumer<GalleryImagePickerBloc, GalleryImagePickerState>(
        listener: (context, state) {
          state.maybeWhen(
            croppedPhotoReady: (Uint8List bytes) {
              if (widget.editProfile == true) {
              } else {
                AutoRouter.of(context).replace(
                  AddPhotoRoute(imageBytes: bytes),
                );
              }
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
          _galleryImagePickerBloc = BlocProvider.of<GalleryImagePickerBloc>(context);
          return Scaffold(
            appBar: LibraryAppBar(
              onPressed: () {
                if (widget.editProfile == true) {
                } else {
                  AutoRouter.of(context).replace(AddPhotoRoute());
                }
              },
              onConfirm: state.maybeWhen(
                photosAcquired: (_) => () {
                  BlocProvider.of<GalleryImagePickerBloc>(context).add(
                    GalleryImagePickerEvent.cropPhoto(_cropperKey),
                  );
                },
                orElse: () => null,
              ),
            ),
            body: state.maybeWhen(
              accessDenied: () {
                return GalleryAccessDenied(
                  onPressed: () {
                    _didOpenSettings = true;
                    BlocProvider.of<GalleryImagePickerBloc>(context).add(
                      const GalleryImagePickerEvent.openSetting(),
                    );
                  },
                );
              },
              photosAcquired: (List<AssetEntity> assets) {
                return BlocProvider(
                  create: (context) => GalleryGridBloc()
                    ..add(
                      GalleryGridEvent.tap(
                        assets.first.id,
                        assets.first.file,
                      ),
                    ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      BlocBuilder<GalleryGridBloc, GalleryGridState>(
                        builder: (context, state) {
                          return state.maybeWhen(
                            photoTapped: (String photoId, Uint8List imageBytes) {
                              return SizedBox(
                                child: Padding(
                                  padding: bottomPadding,
                                  child: Stack(
                                    children: [
                                      Center(
                                        child: Cropper(
                                          zoomScale: maxZoomScale,
                                          overlayType: OverlayType.circle,
                                          overlayColor: overlayColor,
                                          cropperKey: _cropperKey,
                                          image: Image.memory(
                                            imageBytes,
                                            fit: BoxFit.cover,
                                            filterQuality: FilterQuality.high,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: leftIndentCameraButton,
                                        bottom: bottomIndentCameraButton,
                                        child: CameraButton(
                                          iconData: AppIcons.cameraCircle,
                                          onPressed: () => context.router.replace(
                                            TakePhotoRoute(editProfile: widget.editProfile),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                            orElse: () {
                              return const CupertinoActivityIndicator();
                            },
                          );
                        },
                      ),
                      Expanded(
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height / 2,
                          child: GridView.builder(
                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisSpacing: crossAxisSpacing,
                              mainAxisSpacing: mainAxisSpacing,
                              crossAxisCount: crossAxisCount,
                            ),
                            itemCount: assets.length,
                            itemBuilder: (context, index) {
                              return FutureBuilder(
                                future: assets[index].thumbnailData,
                                builder: (context, snapshot) {
                                  final bytes = snapshot.data;
                                  if (bytes == null) {
                                    return const CupertinoActivityIndicator();
                                  }
                                  return BlocBuilder<GalleryGridBloc, GalleryGridState>(
                                    builder: (context, state) {
                                      final String? tappedPhotoId = state.maybeWhen(
                                        photoTapped: (
                                          String tappedPhotoId,
                                          Uint8List imageBytes,
                                        ) =>
                                            tappedPhotoId,
                                        orElse: () => null,
                                      );
                                      bool isVisible = assets[index].id == tappedPhotoId;
                                      return Stack(
                                        children: [
                                          Positioned.fill(
                                            child: GestureDetector(
                                              onTap: () {
                                                BlocProvider.of<GalleryGridBloc>(context).add(
                                                  GalleryGridEvent.tap(
                                                    assets[index].id,
                                                    assets[index].file,
                                                  ),
                                                );
                                              },
                                              child: Image.memory(
                                                bytes,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          IgnorePointer(
                                            child: Visibility(
                                              visible: isVisible,
                                              child: Container(
                                                color: tappedPhotoOpacity,
                                              ),
                                            ),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                },
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
              noPhotosOnDevice: () {
                return const EmptyGallery();
              },
              orElse: () {
                return const Center(
                  child: CupertinoActivityIndicator(
                    radius: initialLoadingIndicatorRadius,
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }
}
