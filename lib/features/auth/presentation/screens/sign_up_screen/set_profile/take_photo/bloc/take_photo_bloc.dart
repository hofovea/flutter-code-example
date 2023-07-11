import 'package:bloc/bloc.dart';
import 'package:camera/camera.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:permission_handler/permission_handler.dart';

part 'take_photo_event.dart';

part 'take_photo_state.dart';

part 'take_photo_bloc.freezed.dart';

class TakePhotoBloc extends Bloc<TakePhotoEvent, TakePhotoState> {
  late CameraController cameraController;

  TakePhotoBloc() : super(const TakePhotoState.initial()) {
    on<TakePhotoEvent>(
      (event, emit) async {
        await event.maybeWhen(
          askPermission: () async {
            var status = await Permission.camera.status;

            if (status.isGranted) {
              emit(const TakePhotoState.accessGranted());
            } else if (status.isDenied) {
              if (await Permission.camera.request().isGranted) {
                emit(const TakePhotoState.accessGranted());
              } else {
                emit(const TakePhotoState.accessDenied());
              }
            }
          },
          openSetting: () async {
            await openAppSettings();
          },
          takePhoto: () {
            emit(const TakePhotoState.photoTaken());
          },
          switchCamera: (int direction) {
            if (direction == 0) {
              emit(const TakePhotoState.backCamera());
            } else {
              emit(const TakePhotoState.frontCamera());
            }
            add(const TakePhotoEvent.askPermission());
          },
          orElse: () {},
        );
      },
    );
  }
}
