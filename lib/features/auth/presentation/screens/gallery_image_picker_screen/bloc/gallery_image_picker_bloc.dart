import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:cropperx/cropperx.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:photo_manager/photo_manager.dart';

part 'gallery_image_picker_event.dart';

part 'gallery_image_picker_state.dart';

part 'gallery_image_picker_bloc.freezed.dart';

class GalleryImagePickerBloc
    extends Bloc<GalleryImagePickerEvent, GalleryImagePickerState> {
  GalleryImagePickerBloc() : super(const GalleryImagePickerState.initial()) {
    on<GalleryImagePickerEvent>(
      (event, emit) async {
        await event.when(
          tryFetchPhotos: () async {
            var permissionState = await PhotoManager.requestPermissionExtend();
            if (permissionState.isAuth) {
              List<AssetPathEntity> albums =
                  await PhotoManager.getAssetPathList(
                type: RequestType.image,
                onlyAll: true,
                filterOption: FilterOptionGroup(
                  containsLivePhotos: false,
                ),
              );
              if (albums.isNotEmpty) {
                final recentAlbum = albums.first;
                final recentAssets = await recentAlbum.getAssetListRange(
                  start: 0,
                  end: 1000000,
                );
                if (recentAssets.isNotEmpty) {
                  emit(
                    GalleryImagePickerState.photosAcquired(recentAssets),
                  );
                } else {
                  emit(
                    const GalleryImagePickerState.noPhotosOnDevice(),
                  );
                }
              } else {
                emit(
                  const GalleryImagePickerState.noPhotosOnDevice(),
                );
              }
            } else {
              emit(
                const GalleryImagePickerState.accessDenied(),
              );
            }
          },
          openSetting: () async {
            await PhotoManager.openSetting();
          },
          cropPhoto: (GlobalKey<State<StatefulWidget>> cropperKey) async {
            emit(
              const GalleryImagePickerState.initial(),
            );
            final imageBytes = await Cropper.crop(
              cropperKey: cropperKey,
            );
            if (imageBytes != null) {
              emit(
                GalleryImagePickerState.croppedPhotoReady(imageBytes),
              );
            }
          },
        );
      },
    );
  }
}
