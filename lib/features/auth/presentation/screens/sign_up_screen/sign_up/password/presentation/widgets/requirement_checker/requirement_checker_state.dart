part of 'requirement_checker_bloc.dart';

@freezed
class RequirementCheckerState with _$RequirementCheckerState {
  const factory RequirementCheckerState.match() = _Match;
  const factory RequirementCheckerState.mismatch() = _Mismatch;
}
