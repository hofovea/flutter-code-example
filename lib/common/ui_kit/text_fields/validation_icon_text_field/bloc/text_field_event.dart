part of 'text_field_bloc.dart';

@freezed
class TextFieldEvent with _$TextFieldEvent {
  const factory TextFieldEvent.inputChanged(String value) = _InputChanged;
  const factory TextFieldEvent.fieldReady(String? value) = _FieldReady;
  const factory TextFieldEvent.showError(String errorText) = _ShowError;
}
