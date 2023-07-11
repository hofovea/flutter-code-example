import 'package:bloc/bloc.dart';
import 'package:code_example/features/auth/presentation/screens/sign_up_screen/set_profile/bio/bio_constants.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bio_input_event.dart';

part 'bio_input_state.dart';

part 'bio_input_bloc.freezed.dart';

class BioInputBloc extends Bloc<BioInputEvent, BioInputState> {
  BioInputBloc() : super(const BioInputState.initial()) {
    on<BioInputEvent>(
      (event, emit) {
        event.when(
          inputChanged: (String input) {
            int charsLeft = maxBioLength - input.length;
            if (charsLeft > minBioLength) {
              emit(
                BioInputState.inputValid(charsLeft, input),
              );
            } else {
              emit(
                const BioInputState.inputInvalid(minBioLength),
              );
            }
          },
        );
      },
    );
  }
}
