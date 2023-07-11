import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:code_example/common/app_icons/app_icons.dart';
import 'package:code_example/common/ui_kit/ui_constants.dart';

import 'bloc/text_field_bloc.dart';

class ValidationIconTextField extends StatelessWidget {
  final String? hintText;
  final Function(String?)? onChanged;
  final String? Function(String? value)? validator;
  final void Function(String? value)? onFieldReady;
  final Widget? prefixIcon;
  final double? prefixIconMaxWidth;
  final Stream<String?>? formErrorsStream;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatter;
  final TextEditingController? controller;

  const ValidationIconTextField({
    Key? key,
    this.hintText,
    this.onChanged,
    this.prefixIcon,
    this.prefixIconMaxWidth,
    this.validator,
    this.onFieldReady,
    this.formErrorsStream,
    this.keyboardType,
    this.controller,
    this.inputFormatter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TextFieldBloc()
        ..setupBloc(
          validator,
          onFieldReady,
          formErrorsStream,
        ),
      child: BlocBuilder<TextFieldBloc, TextFieldState>(
        builder: (context, state) {
          return TextField(
            controller: controller,
            autocorrect: false,
            onChanged: (value) {
              BlocProvider.of<TextFieldBloc>(context).add(
                TextFieldEvent.inputChanged(value),
              );
              if (onChanged != null) {
                onChanged!(value);
              }
            },
            keyboardType: keyboardType,
            inputFormatters: inputFormatter,
            decoration: InputDecoration(
              errorText: state.when(
                initial: () => null,
                validationResult: (errorText) => errorText,
              ),
              hintText: hintText,
              prefixIconConstraints: BoxConstraints(
                maxWidth:
                    prefixIconMaxWidth ?? UIConstants.defaultPrefixIconWidth,
              ),
              prefixIcon: prefixIcon,
              suffixIcon: state.when(
                initial: () => null,
                validationResult: (errorText) => errorText == null
                    ? Icon(
                        AppIcons.accept,
                        color: Theme.of(context)
                            .inputDecorationTheme
                            .prefixStyle
                            ?.color,
                        size: Theme.of(context)
                            .inputDecorationTheme
                            .prefixStyle
                            ?.fontSize,
                      )
                    : Icon(
                        AppIcons.multiplyCircle,
                        color: Theme.of(context).colorScheme.error,
                        size: Theme.of(context)
                            .inputDecorationTheme
                            .suffixStyle
                            ?.fontSize,
                      ),
              ),
            ),
          );
        },
      ),
    );
  }
}
