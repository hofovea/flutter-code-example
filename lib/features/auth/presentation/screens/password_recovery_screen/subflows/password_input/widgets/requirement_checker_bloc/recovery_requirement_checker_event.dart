part of 'recovery_requirement_checker_bloc.dart';

@freezed
class RecoveryRequirementCheckerEvent with _$RecoveryRequirementCheckerEvent {
  const factory RecoveryRequirementCheckerEvent.hasMatch() = _HasMatch;
  const factory RecoveryRequirementCheckerEvent.hasMismatch() = _HasMismatch;
}
