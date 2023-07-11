import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:code_example/common/ui_kit/text_fields/validation_icon_text_field/validation_icon_text_field.dart';
import 'package:code_example/common/ui_kit/ui_constants.dart';

class EmailTextField extends StatelessWidget {
  final Function(String?)? onChanged;
  final String? Function(String? value)? validator;
  final void Function(String? value)? onFieldReady;
  final Widget? prefixIcon;
  final Stream<String?>? formErrorsStream;
  final TextEditingController? controller;

  const EmailTextField({
    Key? key,
    this.onChanged,
    this.validator,
    this.onFieldReady,
    this.prefixIcon,
    this.formErrorsStream,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValidationIconTextField(
      controller: controller,
      hintText: AppLocalizations.of(context)!.email,
      prefixIcon: prefixIcon,
      formErrorsStream: formErrorsStream,
      validator: validator,
      onChanged: onChanged,
      onFieldReady: onFieldReady,
      keyboardType: TextInputType.emailAddress,
      prefixIconMaxWidth: UIConstants.phoneTextFieldPrefixIconWidth,
    );
  }
}
