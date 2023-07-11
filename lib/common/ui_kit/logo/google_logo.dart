import 'package:flutter/material.dart';

import 'package:code_example/common/ui_kit/ui_constants.dart';

class GoogleLogo extends StatelessWidget {
  final double? height;
  final double? width;

  const GoogleLogo({
    this.height,
    this.width,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Image.asset(
        UIConstants.googleLogoPath,
        fit: BoxFit.cover,
      ),
    );
  }
}
