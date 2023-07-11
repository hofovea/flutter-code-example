part of 'birthday_bloc.dart';

@freezed
class BirthdayEvent with _$BirthdayEvent {
  const factory BirthdayEvent.datePickerChanged(DateTime value) =
      _DatePickerChanged;
}
