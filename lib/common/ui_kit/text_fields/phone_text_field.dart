import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:code_example/common/ui_kit/text_fields/validation_icon_text_field/validation_icon_text_field.dart';
import 'package:code_example/common/ui_kit/ui_constants.dart';

class PhoneTextField extends StatelessWidget {
  final Function(String?)? onChanged;
  final String? Function(String? value)? validator;
  final void Function(String? value)? onFieldReady;
  final Widget? prefixIcon;
  final Stream<String?>? formErrorsStream;
  final TextEditingController? controller;

  const PhoneTextField({
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
      onFieldReady: onFieldReady,
      formErrorsStream: formErrorsStream,
      hintText: AppLocalizations.of(context)!.phoneNumber,
      validator: validator,
      keyboardType: TextInputType.number,
      inputFormatter: [FilteringTextInputFormatter.digitsOnly],
      prefixIconMaxWidth: UIConstants.phoneTextFieldPrefixIconWidth,
      prefixIcon: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(
            UIConstants.countryCode,
            style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  color: Theme.of(context).inputDecorationTheme.prefixIconColor,
                ),
          ),
          const SizedBox(
            height: UIConstants.verticalDividerHeight,
            child: VerticalDivider(),
          )
        ],
      ),
    );
  }
}
