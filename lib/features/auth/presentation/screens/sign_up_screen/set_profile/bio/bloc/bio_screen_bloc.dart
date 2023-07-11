import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bio_screen_event.dart';

part 'bio_screen_state.dart';

part 'bio_screen_bloc.freezed.dart';

class BioScreenBloc extends Bloc<BioScreenEvent, BioScreenState> {
  BioScreenBloc() : super(const BioScreenState.nextEnabled()) {
    on<BioScreenEvent>((event, emit) {
      event.when(
        enableNext: () {
          emit(
            const BioScreenState.nextEnabled(),
          );
        },
        disableNext: () {
          emit(
            const BioScreenState.nextDisabled(),
          );
        },
      );
    });
  }
}
