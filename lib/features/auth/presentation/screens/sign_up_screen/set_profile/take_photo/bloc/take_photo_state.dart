part of 'take_photo_bloc.dart';

@freezed
class TakePhotoState with _$TakePhotoState {
  const factory TakePhotoState.initial() = _Initial;

  const factory TakePhotoState.accessDenied() = _AccessDenied;

  const factory TakePhotoState.accessGranted() = _AccessGranted;

  const factory TakePhotoState.frontCamera() = _FrontCamera;

  const factory TakePhotoState.backCamera() = _BackCamera;

  const factory TakePhotoState.photoTaken() = _PhotoTaken;
}
