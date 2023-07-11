import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recovery_requirement_checker_event.dart';

part 'recovery_requirement_checker_state.dart';

part 'recovery_requirement_checker_bloc.freezed.dart';

class RecoveryRequirementCheckerBloc extends Bloc<
    RecoveryRequirementCheckerEvent, RecoveryRequirementCheckerState> {
  RecoveryRequirementCheckerBloc()
      : super(const RecoveryRequirementCheckerState.mismatch()) {
    on<RecoveryRequirementCheckerEvent>(
      (event, emit) {
        event.when(
          hasMatch: () => emit(const RecoveryRequirementCheckerState.match()),
          hasMismatch: () =>
              emit(const RecoveryRequirementCheckerState.mismatch()),
        );
      },
    );
  }
}
