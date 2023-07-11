part of 'unauthorized_flow_bloc.dart';

@freezed
class UnauthorizedFlowEvent with _$UnauthorizedFlowEvent {
  const factory UnauthorizedFlowEvent.signIn() = _SignIn;

  const factory UnauthorizedFlowEvent.signInFacebook() = _SignInFacebook;

  const factory UnauthorizedFlowEvent.signInGoogle() = _SignInGoogle;

  const factory UnauthorizedFlowEvent.finishOptionalSetupFlow(
    Uint8List? avatar,
    String? city,
    String? bio,
  ) = _FinishOptionalSetupFlow;
}
