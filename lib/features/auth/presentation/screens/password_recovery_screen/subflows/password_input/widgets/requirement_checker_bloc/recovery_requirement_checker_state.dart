part of 'recovery_requirement_checker_bloc.dart';

@freezed
class RecoveryRequirementCheckerState with _$RecoveryRequirementCheckerState {
  const factory RecoveryRequirementCheckerState.match() = _Match;
  const factory RecoveryRequirementCheckerState.mismatch() = _Mismatch;
}
