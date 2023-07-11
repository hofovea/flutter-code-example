part of 'nickname_bloc.dart';

@freezed
class NicknameEvent with _$NicknameEvent {
  const factory NicknameEvent.enableSubmit() = _EnableSubmit;
  const factory NicknameEvent.disableSubmit() = _DisableSubmit;
  const factory NicknameEvent.trySubmit(String nickname) = _TrySubmit;
}
