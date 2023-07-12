import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  final double? height;
  final double? width;

  const Logo({
    this.height,
    this.width,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: const FlutterLogo(),
    );
  }
}
