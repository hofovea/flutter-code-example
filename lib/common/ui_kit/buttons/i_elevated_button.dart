import 'package:flutter/material.dart';

import 'package:code_example/common/ui_kit/ui_constants.dart';

class IElevatedButton extends ElevatedButton {
  const IElevatedButton({
    required super.style,
    required super.onPressed,
    required super.child,
    super.key,
  });

  factory IElevatedButton.grey({
    required VoidCallback? onPressed,
    required Widget child,
  }) =>
      IElevatedButton(
        style: UIConstants.greyElevatedButtonStyle,
        onPressed: onPressed,
        child: child,
      );
}
