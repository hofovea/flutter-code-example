part of 'crop_photo_bloc.dart';

@freezed
class CropPhotoState with _$CropPhotoState {
  const factory CropPhotoState.initial() = _Initial;

  const factory CropPhotoState.croppedPhotoReady(Uint8List croppedPhotoBytes) =
      _CroppedPhotoReady;
}
