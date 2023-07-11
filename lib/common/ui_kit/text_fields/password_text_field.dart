import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:code_example/common/ui_kit/text_fields/obscured_text_field.dart';

class PasswordTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final void Function(String? value)? onFieldReady;
  final String? hintText;
  final Stream<String?>? formErrorsStream;

  const PasswordTextField({
    this.hintText,
    this.controller,
    this.validator,
    this.onFieldReady,
    this.formErrorsStream,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ObscuredTextField(
      controller: controller,
      validator: validator,
      hintText: hintText ?? AppLocalizations.of(context)!.password,
      onFieldReady: onFieldReady,
      formErrorsStream: formErrorsStream,
    );
  }
}
