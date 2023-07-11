part of 'authorized_flow_bloc.dart';

@freezed
class AuthorizedFlowEvent with _$AuthorizedFlowEvent {
  const factory AuthorizedFlowEvent.fetchCurrentUser() = _FetchCurrentUser;
  const factory AuthorizedFlowEvent.getCurrentUser() = _GetCurrentUser;
  const factory AuthorizedFlowEvent.signOut() = _SignOut;
  const factory AuthorizedFlowEvent.finishOptionalSetupFlow(
      Uint8List? avatar,
      String? city,
      String? bio,
      ) = _FinishOptionalSetupFlow;
}
