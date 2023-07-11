import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'password_event.dart';

part 'password_state.dart';

part 'password_bloc.freezed.dart';

class PasswordBloc extends Bloc<PasswordEvent, PasswordState> {
  PasswordBloc() : super(const PasswordState.initial()) {
    on<PasswordEvent>((event, emit) {
      event.maybeWhen(
        submit: (password) {
          emit(PasswordState.validationSuccess(password));
        },
        enableSubmit: () {
          emit(const PasswordState.enabledSubmit());
        },
        disableSubmit: () {
          emit(const PasswordState.disabledSubmit());
        },
        orElse: () {},
      );
    });
  }
}
