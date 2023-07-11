part of 'add_photo_bloc.dart';

@freezed
class AddPhotoEvent with _$AddPhotoEvent {
  const factory AddPhotoEvent.started() = _Started;

  const factory AddPhotoEvent.changePhoto() = _ChangePhoto;

  const factory AddPhotoEvent.deletePhoto() = _DeletePhoto;

  const factory AddPhotoEvent.validatePhoto(Uint8List imageBytes) =
      _ValidatePhoto;
}
