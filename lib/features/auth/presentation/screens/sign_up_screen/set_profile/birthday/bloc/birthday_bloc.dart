import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'birthday_event.dart';

part 'birthday_state.dart';

part 'birthday_bloc.freezed.dart';

class BirthdayBloc extends Bloc<BirthdayEvent, BirthdayState> {
  BirthdayBloc() : super(const BirthdayState.initial()) {
    on<BirthdayEvent>((event, emit) {
      event.when(
        datePickerChanged: (DateTime birthday) {
          emit(
            BirthdayState.datePickerUpdate(birthday),
          );
        },
      );
    });
  }
}
