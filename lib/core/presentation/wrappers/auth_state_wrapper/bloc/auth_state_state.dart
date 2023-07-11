part of 'auth_state_bloc.dart';

@freezed
class AuthStateState with _$AuthStateState {
  const factory AuthStateState.initial() = _Initial;

  const factory AuthStateState.authorized() = _Authorized;

  const factory AuthStateState.unauthorized() = _Unauthorized;
}
