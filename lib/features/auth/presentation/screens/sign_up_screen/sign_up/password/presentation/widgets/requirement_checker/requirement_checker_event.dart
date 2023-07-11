part of 'requirement_checker_bloc.dart';

@freezed
class RequirementCheckerEvent with _$RequirementCheckerEvent {
  const factory RequirementCheckerEvent.hasMatch() = _HasMatch;
  const factory RequirementCheckerEvent.hasMismatch() = _HasMismatch;
}
