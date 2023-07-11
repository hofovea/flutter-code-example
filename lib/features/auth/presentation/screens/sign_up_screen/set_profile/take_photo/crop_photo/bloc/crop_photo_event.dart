part of 'crop_photo_bloc.dart';

@freezed
class CropPhotoEvent with _$CropPhotoEvent {
  const factory CropPhotoEvent.started() = _Started;

  const factory CropPhotoEvent.cropPhoto(GlobalKey cropperKey) = _CropPhoto;
}
