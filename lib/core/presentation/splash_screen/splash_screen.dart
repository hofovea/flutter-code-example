import 'package:flutter/material.dart';

import 'package:code_example/common/ui_kit/logo/app_logo.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final Duration _duration = const Duration(seconds: 3);
  final double _startOpacity = 0.0;
  final double _endOpacity = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TweenAnimationBuilder<double>(
          tween: Tween<double>(begin: _startOpacity, end: _endOpacity),
          curve: Curves.ease,
          duration: _duration,
          builder: (BuildContext context, double opacity, Widget? child) {
            return Opacity(
              opacity: opacity,
              child: const Logo(),
            );
          },
        ),
      ),
    );
  }
}
