import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'full_name_event.dart';

part 'full_name_state.dart';

part 'full_name_bloc.freezed.dart';

class FullNameBloc extends Bloc<FullNameEvent, FullNameState> {
  FullNameBloc() : super(const FullNameState.initial()) {
    on<FullNameEvent>((event, emit) {
      event.when(
        enableSubmit: () {
          emit(const FullNameState.enabledSubmit());
        },
        disableSubmit: () {
          emit(const FullNameState.disabledSubmit());
        },
      );
    });
  }
}
