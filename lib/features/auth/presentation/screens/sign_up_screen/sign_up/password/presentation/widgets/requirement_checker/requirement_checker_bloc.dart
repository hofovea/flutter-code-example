import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'requirement_checker_event.dart';

part 'requirement_checker_state.dart';

part 'requirement_checker_bloc.freezed.dart';

class RequirementCheckerBloc
    extends Bloc<RequirementCheckerEvent, RequirementCheckerState> {
  RequirementCheckerBloc() : super(const RequirementCheckerState.mismatch()) {
    on<RequirementCheckerEvent>(
      (event, emit) {
        event.maybeWhen(
          hasMatch: () => emit(const RequirementCheckerState.match()),
          hasMismatch: () => emit(const RequirementCheckerState.mismatch()),
          orElse: () {},
        );
      },
    );
  }
}
