part of 'bio_input_bloc.dart';

@freezed
class BioInputState with _$BioInputState {
  const factory BioInputState.initial() = _Initial;
  const factory BioInputState.inputValid(int inputLength, String bio) =
      _InputValid;
  const factory BioInputState.inputInvalid(int inputLength) = _InputInvalid;
}
