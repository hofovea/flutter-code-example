import 'package:flutter/material.dart';
import 'package:code_example/common/ui_kit/ui_constants.dart';

class IAppBar extends AppBar {
  IAppBar({
    super.automaticallyImplyLeading = false,
    super.title,
    super.elevation,
    super.actions,
    super.leading,
    super.leadingWidth,
    Key? key,
  }) : super(key: key);

  factory IAppBar.basic({
    String? title,
    List<Widget>? actions,
    Widget? leading,
    double? leadingWidth,
  }) =>
      IAppBar(
        title: Text(title ?? ''),
        elevation: UIConstants.elevation,
        actions: actions,
        leading: leading,
        leadingWidth: leadingWidth,
      );

  factory IAppBar.underlined({
    String? title,
    List<Widget>? actions,
    Widget? leading,
    double? leadingWidth,
  }) =>
      IAppBar(
        title: Text(title ?? ''),
        elevation: UIConstants.underlineElevation,
        actions: actions,
        leading: leading,
        leadingWidth: leadingWidth,
      );
}
