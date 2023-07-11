import 'package:flutter/material.dart';
import 'package:code_example/features/auth/presentation/screens/gallery_image_picker_screen/style_constants.dart';

class CameraButton extends StatelessWidget {
  static const _defaultIconSize = 35.0;
  static const _defaultFillColor = cameraButtonBackgroundColor;
  static const _defaultIconColor = cameraButtonIconColor;
  final IconData iconData;
  final double? iconSize;
  final Color? fillColor;
  final Color? iconColor;
  final VoidCallback? onPressed;

  const CameraButton({
    Key? key,
    required this.iconData,
    this.iconSize,
    this.fillColor,
    this.iconColor,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: fillColor ?? _defaultFillColor,
      onPressed: onPressed,
      shape: const CircleBorder(),
      child: Icon(
        iconData,
        color: iconColor ?? _defaultIconColor,
        size: iconSize ?? _defaultIconSize,
      ),
    );
  }
}
