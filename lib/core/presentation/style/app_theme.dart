import 'package:flutter/material.dart';

import 'package:code_example/common/app_colors/app_colors.dart';
import 'package:code_example/common/ui_kit/ui_constants.dart';

final ThemeData mainTheme = ThemeData(
  highlightColor: Colors.transparent,
  splashColor: Colors.transparent,
  splashFactory: NoSplash.splashFactory,
  colorScheme: const ColorScheme.light(
    background: AppColors.scaffoldBackground,
    primary: AppColors.primary,
    error: AppColors.error,
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColors.scaffoldBackground,
    foregroundColor: AppColors.suffixIcon,
    actionsIconTheme: IconThemeData(
      color: AppColors.appBarTitle,
      size: UIConstants.iconSize,
    ),
    centerTitle: true,
    titleTextStyle: TextStyle(
      fontSize: UIConstants.appBarTitleFontSize,
      fontWeight: UIConstants.appBarTitleFontWeight,
      color: AppColors.appBarTitle,
    ),
  ),
  textTheme: const TextTheme(
    // Caption2
    bodySmall: TextStyle(
      fontWeight: FontWeight.normal,
      fontSize: 11.0,
      color: AppColors.mainTextThemeColor,
    ),
    // Caption 1
    bodyMedium: TextStyle(
      fontWeight: FontWeight.normal,
      fontSize: 14.0,
      color: AppColors.mainTextThemeColor,
    ),
    // Footnote
    bodyLarge: TextStyle(
      fontWeight: FontWeight.normal,
      fontSize: 14.0,
      color: AppColors.mainTextThemeColor,
    ),
    // Subheadline
    labelSmall: TextStyle(
      fontWeight: FontWeight.normal,
      fontSize: 15.0,
      letterSpacing: -.24,
      color: AppColors.mainTextThemeColor,
    ),
    // Callout
    labelMedium: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 17.0,
      color: AppColors.mainTextThemeColor,
    ),
    // Body
    labelLarge: TextStyle(
      fontWeight: FontWeight.normal,
      fontSize: 17.0,
      color: AppColors.mainTextThemeColor,
    ),
    // Title 3
    titleSmall: TextStyle(
      fontWeight: FontWeight.normal,
      fontSize: 20.0,
      color: AppColors.mainTextThemeColor,
    ),
    // Callout
    titleMedium: TextStyle(
      fontWeight: FontWeight.normal,
      fontSize: 16.0,
      color: AppColors.mainTextThemeColor,
    ),
    // Title 1
    titleLarge: TextStyle(
      fontWeight: FontWeight.normal,
      fontSize: 28.0,
      color: AppColors.mainTextThemeColor,
    ),
    // LargeTitle
    headlineSmall: TextStyle(
      fontWeight: FontWeight.normal,
      fontSize: 34.0,
      color: AppColors.mainTextThemeColor,
    ),
    // Bold Footnote
    headlineMedium: TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 13.0,
      color: AppColors.mainTextThemeColor,
    ),
    // Bold Title 2
    headlineLarge: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 22.0,
      color: AppColors.mainTextThemeColor,
    ),
    // Bold Caption 1
    displaySmall: TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 12.0,
      color: AppColors.mainTextThemeColor,
    ),
    // Bold Callout
    displayMedium: TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 15.0,
      color: AppColors.mainTextThemeColor,
    ),
    // Bold Subheadline
    displayLarge: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 15.0,
      color: AppColors.mainTextThemeColor,
    ),
  ),
  dividerTheme: const DividerThemeData(
    color: AppColors.textFieldBorder,
    thickness: UIConstants.verticalDividerThickness,
  ),
  hintColor: AppColors.hintText,
  scaffoldBackgroundColor: AppColors.scaffoldBackground,
  checkboxTheme: CheckboxThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(UIConstants.checkBoxRadius),
    ),
  ),
  iconTheme: const IconThemeData(color: AppColors.textDetail),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: AppColors.primary,
      splashFactory: NoSplash.splashFactory,
      disabledForegroundColor: AppColors.textDetail,
      textStyle: const TextStyle(fontWeight: FontWeight.normal),
    ).copyWith(
      overlayColor: MaterialStateProperty.all(Colors.transparent),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      textStyle: const TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 16.0,
          color: AppColors.elevatedButtonForeground),
      elevation: UIConstants.elevation,
      disabledBackgroundColor: AppColors.elevatedButtonDisabledBackground,
      disabledForegroundColor: AppColors.elevatedButtonForeground,
      foregroundColor: AppColors.textBackground,
      backgroundColor: AppColors.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(UIConstants.borderRadius),
      ),
    ),
  ),
  tabBarTheme: const TabBarTheme(
    splashFactory: NoSplash.splashFactory,
    indicatorColor: AppColors.mainTextThemeColor,
    indicatorSize: TabBarIndicatorSize.tab,
  ),
  inputDecorationTheme: const InputDecorationTheme(
    filled: true,
    fillColor: AppColors.textBackground,
    prefixIconColor: AppColors.textDetail,
    prefixStyle: TextStyle(
      color: AppColors.success,
      fontSize: UIConstants.prefixIconSize,
    ),
    suffixIconColor: AppColors.textDetail,
    suffixStyle: TextStyle(
      color: AppColors.suffixIcon,
      fontSize: UIConstants.iconSize,
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.textFieldBorder),
      borderRadius: BorderRadius.all(
        Radius.circular(UIConstants.borderRadius),
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.textFieldBorder),
      borderRadius: BorderRadius.all(
        Radius.circular(UIConstants.borderRadius),
      ),
    ),
    errorMaxLines: UIConstants.errorMaxLines,
    focusedErrorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.error),
      borderRadius: BorderRadius.all(
        Radius.circular(UIConstants.borderRadius),
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.error),
      borderRadius: BorderRadius.all(
        Radius.circular(UIConstants.borderRadius),
      ),
    ),
  ),
);
