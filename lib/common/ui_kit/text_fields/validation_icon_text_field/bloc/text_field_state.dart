part of 'text_field_bloc.dart';

@freezed
class TextFieldState with _$TextFieldState {
  const factory TextFieldState.initial() = _Initial;
  const factory TextFieldState.validationResult({String? errorText}) =
      _ValidationResult;
}
