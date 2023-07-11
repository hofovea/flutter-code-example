part of 'birthday_bloc.dart';

@freezed
class BirthdayState with _$BirthdayState {
  const factory BirthdayState.initial() = _Initial;
  const factory BirthdayState.datePickerUpdate(DateTime value) =
      _DatePickerUpdate;
}
