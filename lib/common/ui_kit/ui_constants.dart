import 'package:flutter/material.dart';

import 'package:code_example/common/app_colors/app_colors.dart';

class UIConstants {
  static const int errorMaxLines = 3;
  static const int tabBarLength = 2;
  static const double borderRadius = 6.0;
  static const double checkBoxRadius = 4.0;
  static const double verticalDividerHeight = 30.0;
  static const double verticalDividerThickness = 1.0;
  static const double tabBarIndicatorWeight = 1.0;
  static const double strokeWidth = 1.0;
  static const double elevation = .0;
  static const double underlineElevation = 0.5;
  static const double appBarTitleFontSize = 16.0;
  static const double iconSize = 30.0;
  static const double prefixIconSize = 21.0;
  static const double leadingWidth = 70.0;
  static const double defaultLeadingWidth = 56.0;
  static const double iconOpacity = .45;
  static const double phoneTextFieldPrefixIconWidth = 120.0;
  static const double defaultPrefixIconWidth = 50.0;
  static const String countryCode = 'UA +380';
  static const String logoPath = 'assets/logo/interngram.png';
  static const String googleLogoPath = 'assets/logo/google_logo.png';
  static const String facebookLogoPath = 'assets/logo/facebook_logo.png';
  static const FontWeight appBarTitleFontWeight = FontWeight.bold;
  static final ButtonStyle greyElevatedButtonStyle = ElevatedButton.styleFrom(
    side: const BorderSide(color: AppColors.textFieldBorder),
    backgroundColor: AppColors.textBackground,
    foregroundColor: AppColors.textDetail,
  );
}
