import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_photo_event.dart';

part 'add_photo_state.dart';

part 'add_photo_bloc.freezed.dart';

class AddPhotoBloc extends Bloc<AddPhotoEvent, AddPhotoState> {
  AddPhotoBloc() : super(const AddPhotoState.initial()) {
    on<AddPhotoEvent>((event, emit) {
      event.maybeWhen(
          validatePhoto: (Uint8List imageBytes) {
            const double validImageSize = 30;

            final lengthInMb = imageBytes.lengthInBytes / (1024 * 1024);

            if (lengthInMb > validImageSize) {
              emit(const AddPhotoState.invalid());
            } else {
              emit(const AddPhotoState.succeed());
            }
          },
          changePhoto: () {
            emit(const AddPhotoState.changed());
          },
          deletePhoto: () {
            emit(const AddPhotoState.deleted());
          },
          orElse: () {});
    });
  }
}
