part of 'take_photo_bloc.dart';

@freezed
class TakePhotoEvent with _$TakePhotoEvent {
  const factory TakePhotoEvent.takePhoto() = _TakePhoto;

  const factory TakePhotoEvent.askPermission() = _AskPermission;

  const factory TakePhotoEvent.openSetting() = _OpenSetting;

  const factory TakePhotoEvent.switchCamera(int direction) = _SwitchCamera;
}
