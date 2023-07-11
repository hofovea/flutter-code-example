part of 'authorized_flow_bloc.dart';

@freezed
class AuthorizedFlowState with _$AuthorizedFlowState {
  const factory AuthorizedFlowState.initial() = _Initial;
  const factory AuthorizedFlowState.loading() = _Loading;
  const factory AuthorizedFlowState.signedOut() = _SignedOut;
  const factory AuthorizedFlowState.optionalSetupSuccess() =
  _OptionalSetupSuccess;

  const factory AuthorizedFlowState.optionalSetupFailure() =
  _OptionalSetupFailure;

  const factory AuthorizedFlowState.optionalSetupUserNotFoundFailure() =
  _OptionalSetupUserNotFoundFailure;
}
