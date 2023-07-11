part of 'sign_in_bloc.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState.initial() = _Initial;

  const factory SignInState.loading() = _Loading;

  const factory SignInState.success(String username, String password) =
      _Success;

  const factory SignInState.validationFailure() = _ValidationFailure;

  const factory SignInState.unauthorized() = _Unauthorized;

  const factory SignInState.unknownFailure() = _UnknownFailure;
}
