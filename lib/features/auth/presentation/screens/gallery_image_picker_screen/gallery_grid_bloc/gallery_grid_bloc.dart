import 'dart:io';
import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'gallery_grid_event.dart';

part 'gallery_grid_state.dart';

part 'gallery_grid_bloc.freezed.dart';

class GalleryGridBloc extends Bloc<GalleryGridEvent, GalleryGridState> {
  GalleryGridBloc() : super(const GalleryGridState.initial()) {
    on<GalleryGridEvent>((event, emit) async {
      await event.when(
        tap: (String photoId, Future<File?> imageFileFuture) async {
          final File? imageFile = await imageFileFuture;
          if (imageFile != null) {
            final Uint8List imageBytes = await imageFile.readAsBytes();
            emit(
              GalleryGridState.photoTapped(photoId, imageBytes),
            );
          }
        },
      );
    });
  }
}
