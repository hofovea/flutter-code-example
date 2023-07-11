import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:code_example/features/auth/domain/use_cases/sign_in_user.dart';
import 'package:code_example/core/domain/usecase/usecase.dart';
import 'package:code_example/di/di_container.dart' as di;
import 'package:code_example/core/domain/failures/failures.dart';

part 'sign_in_event.dart';

part 'sign_in_state.dart';

part 'sign_in_bloc.freezed.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final SignInUser _signInUser = di.serviceLocator<SignInUser>();

  SignInBloc() : super(const SignInState.initial()) {
    on<SignInEvent>((event, emit) async {
      await event.when(trySignIn: (username, password) async {
        emit(
          const SignInState.loading(),
        );

        final result = await _signInUser(TwoStringParams(
          username,
          password,
        ));

        result.fold((failure) {
          switch (failure.runtimeType) {
            case InvalidFormatFailure:
              emit(const SignInState.validationFailure());
              break;
            case UnauthorizedFailure:
              emit(const SignInState.unauthorized());
              break;
            default:
              emit(const SignInState.unknownFailure());
          }
        }, (result) {
          emit(SignInState.success(username, password));
        });
      });
    });
  }
}
