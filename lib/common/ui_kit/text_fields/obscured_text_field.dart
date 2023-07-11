import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:code_example/common/app_icons/app_icons.dart';
import 'package:code_example/common/ui_kit/text_fields/validation_icon_text_field/bloc/text_field_bloc.dart';

class ObscuredTextField extends StatefulWidget {
  final TextEditingController? controller;
  final String? Function(String? value)? validator;
  final String? hintText;
  final void Function(String? value)? onFieldReady;
  final Stream<String?>? formErrorsStream;
  final Function(String?)? onChanged;

  const ObscuredTextField({
    required this.controller,
    required this.validator,
    required this.hintText,
    this.formErrorsStream,
    this.onFieldReady,
    this.onChanged,
    Key? key,
  }) : super(key: key);

  @override
  State<ObscuredTextField> createState() => _ObscuredTextFieldState();
}

class _ObscuredTextFieldState extends State<ObscuredTextField> {
  var isObscured = true;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TextFieldBloc()
        ..setupBloc(
          widget.validator,
          widget.onFieldReady,
          widget.formErrorsStream,
        ),
      child: BlocBuilder<TextFieldBloc, TextFieldState>(
        builder: (context, state) {
          return TextField(
            autocorrect: false,
            controller: widget.controller,
            obscureText: isObscured,
            onChanged: (value) {
              BlocProvider.of<TextFieldBloc>(context).add(
                TextFieldEvent.inputChanged(value),
              );
              if (widget.onChanged != null) {
                widget.onChanged!(value);
              }
            },
            decoration: InputDecoration(
              hintText: widget.hintText,
              errorText: state.when(
                initial: () => null,
                validationResult: (errorText) => errorText,
              ),
              suffixIcon: GestureDetector(
                onTap: () => setState(() {
                  isObscured = !isObscured;
                }),
                child: Icon(
                  isObscured ? AppIcons.eyeSlash : AppIcons.eye,
                  color: Theme.of(context).inputDecorationTheme.suffixIconColor,
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
