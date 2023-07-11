import 'package:flutter/material.dart';

import 'package:code_example/common/app_colors/app_colors.dart';

class ITextButton extends TextButton {
  const ITextButton({
    required super.style,
    required super.onPressed,
    required super.child,
    super.key,
  });

  factory ITextButton.blue({
    required VoidCallback? onPressed,
    required Widget child,
  }) =>
      ITextButton(
        style: TextButton.styleFrom(
          disabledForegroundColor: AppColors.textDetail,
        ).copyWith(
          overlayColor: MaterialStateProperty.all(Colors.transparent),
        ),
        onPressed: onPressed,
        child: child,
      );

  factory ITextButton.grey({
    required VoidCallback? onPressed,
    required Widget child,
  }) =>
      ITextButton(
        style: ButtonStyle(
          overlayColor: MaterialStateProperty.all(Colors.transparent),
          foregroundColor: MaterialStateProperty.all(AppColors.textDetail),
        ),
        onPressed: onPressed,
        child: child,
      );

  factory ITextButton.lightGrey({
    required VoidCallback? onPressed,
    required Widget child,
  }) =>
      ITextButton(
        style: ButtonStyle(
          overlayColor: MaterialStateProperty.all(Colors.transparent),
          foregroundColor: MaterialStateProperty.all(AppColors.suffixIcon),
        ),
        onPressed: onPressed,
        child: child,
      );
}
