part of 'add_photo_bloc.dart';

@freezed
class AddPhotoState with _$AddPhotoState {
  const factory AddPhotoState.initial() = _Initial;

  const factory AddPhotoState.succeed() = _Succeed;

  const factory AddPhotoState.invalid() = _Invalid;

  const factory AddPhotoState.changed() = _Changed;

  const factory AddPhotoState.deleted() = _Deleted;
}
