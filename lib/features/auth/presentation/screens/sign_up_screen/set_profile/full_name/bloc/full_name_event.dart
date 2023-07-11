part of 'full_name_bloc.dart';

@freezed
class FullNameEvent with _$FullNameEvent {
  const factory FullNameEvent.enableSubmit() = _EnableSubmit;
  const factory FullNameEvent.disableSubmit() = _DisableSubmit;
}
