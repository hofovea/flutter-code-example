part of 'gallery_grid_bloc.dart';

@freezed
class GalleryGridEvent with _$GalleryGridEvent {
  const factory GalleryGridEvent.tap(String photoId, Future<File?> imageFile) =
      _Tap;
}
