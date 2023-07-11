import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:code_example/common/app_icons/app_icons.dart';

class SearchTextField extends StatelessWidget {
  final TextEditingController controller;

  const SearchTextField({
    required this.controller,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        prefixIcon: Icon(
          AppIcons.search,
          size: Theme.of(context).inputDecorationTheme.prefixStyle?.fontSize,
        ),
        hintText: AppLocalizations.of(context)!.search,
        suffixIcon: controller.text.isEmpty
            ? null
            : GestureDetector(
                onTap: () => controller.clear(),
                child: Icon(
                  AppIcons.multiplyCircle,
                  size: Theme.of(context)
                      .inputDecorationTheme
                      .suffixStyle
                      ?.fontSize,
                ),
              ),
      ),
    );
  }
}
