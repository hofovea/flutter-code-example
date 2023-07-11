part of 'sign_in_bloc.dart';

@freezed
class SignInEvent with _$SignInEvent {
  const factory SignInEvent.trySignIn(String username, String password) =
      _TrySignIn;
}
