part of 'bio_input_bloc.dart';

@freezed
class BioInputEvent with _$BioInputEvent {
  const factory BioInputEvent.inputChanged(String input) = _InputChanged;
}
