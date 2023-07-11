import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'phone_or_email_event.dart';

part 'phone_or_email_state.dart';

part 'phone_or_email_bloc.freezed.dart';

class PhoneOrEmailBloc extends Bloc<PhoneOrEmailEvent, PhoneOrEmailState> {
  PhoneOrEmailBloc() : super(const PhoneOrEmailState.phone()) {
    on<PhoneOrEmailEvent>(
      (event, emit) async {
        event.when(
          switchToPhone: () {
            emit(const PhoneOrEmailState.phone());
          },
          switchToEmail: () {
            emit(const PhoneOrEmailState.email());
          },
        );
      },
    );
  }
}
