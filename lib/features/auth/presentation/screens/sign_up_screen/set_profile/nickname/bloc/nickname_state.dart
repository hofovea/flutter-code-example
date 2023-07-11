part of 'nickname_bloc.dart';

@freezed
class NicknameState with _$NicknameState {
  const factory NicknameState.initial() = _Initial;
  const factory NicknameState.loading() = _Loading;
  const factory NicknameState.enabledSubmit() = _EnabledSubmit;
  const factory NicknameState.disabledSubmit() = _DisabledSubmit;
  const factory NicknameState.validationSuccess(String nickname) =
      _ValidationSuccess;
  const factory NicknameState.validationFailureNicknameExists() =
      _ValidationFailureNicknameExists;
  const factory NicknameState.validationFailureUnknown() =
      _ValidationFailureUnknown;
}
