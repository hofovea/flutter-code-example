part of 'bio_screen_bloc.dart';

@freezed
class BioScreenEvent with _$BioScreenEvent {
  const factory BioScreenEvent.enableNext() = _EnableNext;
  const factory BioScreenEvent.disableNext() = _DisableNext;
}
