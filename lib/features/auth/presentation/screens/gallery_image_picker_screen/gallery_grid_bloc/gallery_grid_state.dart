part of 'gallery_grid_bloc.dart';

@freezed
class GalleryGridState with _$GalleryGridState {
  const factory GalleryGridState.initial() = _Initial;
  const factory GalleryGridState.photoTapped(
      String tappedPhotoId, Uint8List imageFile) = _PhotoTapped;
  const factory GalleryGridState.invalidPhoto() = _InvalidPhoto;
}
