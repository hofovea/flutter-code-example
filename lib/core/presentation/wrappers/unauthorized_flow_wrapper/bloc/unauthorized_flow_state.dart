part of 'unauthorized_flow_bloc.dart';

@freezed
class UnauthorizedFlowState with _$UnauthorizedFlowState {
  const factory UnauthorizedFlowState.initial() = _Initial;

  const factory UnauthorizedFlowState.success(bool isFirstTime) = _Success;

  const factory UnauthorizedFlowState.invalidFacebookSignIn() =
      _InvalidFacebookSignIn;

  const factory UnauthorizedFlowState.invalidGoogleSignIn() =
      _InvalidGoogleSignIn;

  const factory UnauthorizedFlowState.serverFailure() = _ServerFailure;

  const factory UnauthorizedFlowState.unknownFailure() = _UnknownFailure;

  const factory UnauthorizedFlowState.optionalSetupSuccess() =
      _OptionalSetupSuccess;

  const factory UnauthorizedFlowState.optionalSetupFailure() =
      _OptionalSetupFailure;

  const factory UnauthorizedFlowState.optionalSetupUserNotFoundFailure() =
      _OptionalSetupUserNotFoundFailure;
}
