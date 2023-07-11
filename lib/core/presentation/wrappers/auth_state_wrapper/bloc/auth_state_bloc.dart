import 'package:bloc/bloc.dart';
import 'package:code_example/core/domain/usecase/usecase.dart';
import 'package:code_example/features/auth/domain/use_cases/attempt_access.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:code_example/di/di_container.dart' as di;

part 'auth_state_event.dart';

part 'auth_state_state.dart';

part 'auth_state_bloc.freezed.dart';

class AuthStateBloc extends Bloc<AuthStateEvent, AuthStateState> {
  final AttemptAccess _attemptAccess = di.serviceLocator<AttemptAccess>();

  AuthStateBloc() : super(const AuthStateState.initial()) {
    on<AuthStateEvent>(
      (event, emit) async {
        await event.when(
          attemptAccess: () async {
            final attemptResult = await _attemptAccess(NoParams());
            attemptResult.fold(
              (failure) => emit(const AuthStateState.unauthorized()),
              (result) => emit(const AuthStateState.authorized()),
            );
          },
        );
      },
    );
  }
}
