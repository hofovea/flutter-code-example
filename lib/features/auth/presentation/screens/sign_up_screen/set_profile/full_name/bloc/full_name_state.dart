part of 'full_name_bloc.dart';

@freezed
class FullNameState with _$FullNameState {
  const factory FullNameState.initial() = _Initial;
  const factory FullNameState.enabledSubmit() = _EnabledSubmit;
  const factory FullNameState.disabledSubmit() = _DisabledSubmit;
}
