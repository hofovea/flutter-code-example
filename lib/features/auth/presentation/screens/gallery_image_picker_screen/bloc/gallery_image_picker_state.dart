part of 'gallery_image_picker_bloc.dart';

@freezed
class GalleryImagePickerState with _$GalleryImagePickerState {
  const factory GalleryImagePickerState.initial() = _Initial;
  const factory GalleryImagePickerState.accessDenied() = _AccessDenied;
  const factory GalleryImagePickerState.photosAcquired(
      List<AssetEntity> assets) = _PhotosAcquired;
  const factory GalleryImagePickerState.noPhotosOnDevice() = _NoPhotosOnDevice;
  const factory GalleryImagePickerState.croppedPhotoReady(
      Uint8List croppedPhotoBytes) = _CroppedPhotoReady;
}
