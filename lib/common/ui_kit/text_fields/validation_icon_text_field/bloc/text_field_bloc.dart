import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'text_field_event.dart';

part 'text_field_state.dart';

part 'text_field_bloc.freezed.dart';

class TextFieldBloc extends Bloc<TextFieldEvent, TextFieldState> {
  late final String? Function(String?) _validator;
  late final void Function(String?) _onFieldReady;
  late final Stream<String?>? _formErrorsStream;

  TextFieldBloc() : super(const TextFieldState.initial()) {
    on<TextFieldEvent>(
      (event, emit) async {
        await event.when(
          inputChanged: (value) {
            var result = _validator(value);
            emit(
              TextFieldState.validationResult(errorText: result),
            );
            if (result == null) {
              add(
                TextFieldEvent.fieldReady(value),
              );
            }
          },
          fieldReady: (String? value) async {
            _onFieldReady(value);
          },
          showError: (String errorText) {
            emit(
              TextFieldState.validationResult(errorText: errorText),
            );
          },
        );
      },
    );
  }

  void setupBloc([
    String? Function(String?)? validator,
    void Function(String?)? onFieldReady,
    Stream<String?>? formErrorsStream,
  ]) {
    _validator = validator ?? (value) => null;
    _onFieldReady = onFieldReady ?? (value) {};
    _formErrorsStream = formErrorsStream;
    if (_formErrorsStream != null) {
      _formErrorsStream!.listen(
        (errorText) {
          if (errorText != null) {
            add(
              TextFieldEvent.showError(errorText),
            );
          }
        },
      );
    }
  }
}
