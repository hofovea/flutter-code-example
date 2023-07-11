part of 'gallery_image_picker_bloc.dart';

@freezed
class GalleryImagePickerEvent with _$GalleryImagePickerEvent {
  const factory GalleryImagePickerEvent.tryFetchPhotos() = _TryFetchPhotos;
  const factory GalleryImagePickerEvent.openSetting() = _OpenSetting;
  const factory GalleryImagePickerEvent.cropPhoto(GlobalKey cropperKey) =
      _CropPhoto;
}
