import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:cropperx/cropperx.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'crop_photo_event.dart';

part 'crop_photo_state.dart';

part 'crop_photo_bloc.freezed.dart';

class CropPhotoBloc extends Bloc<CropPhotoEvent, CropPhotoState> {
  CropPhotoBloc() : super(const CropPhotoState.initial()) {
    on<CropPhotoEvent>((event, emit) async {
      await event.maybeWhen(
        started: () {
          emit(const CropPhotoState.initial());
        },
        cropPhoto: (cropperKey) async {
          final imageBytes = await Cropper.crop(
            cropperKey: cropperKey,
          );

          if (imageBytes != null) {
            emit(CropPhotoState.croppedPhotoReady(imageBytes));
          }
        },
        orElse: () {},
      );
    });
  }
}
