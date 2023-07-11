import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recovery_phone_or_email_event.dart';

part 'recovery_phone_or_email_state.dart';

part 'recovery_phone_or_email_bloc.freezed.dart';

class RecoveryPhoneOrEmailBloc
    extends Bloc<RecoveryPhoneOrEmailEvent, RecoveryPhoneOrEmailState> {
  RecoveryPhoneOrEmailBloc() : super(const RecoveryPhoneOrEmailState.phone()) {
    on<RecoveryPhoneOrEmailEvent>(
      (event, emit) async {
        event.when(
          switchToPhone: () {
            emit(
              const RecoveryPhoneOrEmailState.phone(),
            );
          },
          switchToEmail: () {
            emit(
              const RecoveryPhoneOrEmailState.email(),
            );
          },
        );
      },
    );
  }
}
