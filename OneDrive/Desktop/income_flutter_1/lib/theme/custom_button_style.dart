import 'dart:ui';
import 'package:gankhuyag_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillBlueGray => ElevatedButton.styleFrom(
        backgroundColor: appTheme.blueGray60001,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(37.h),
        ),
      );
  static ButtonStyle get fillBlueGrayTL34 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.blueGray60001,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(34.h),
        ),
      );

  // Gradient button style
  static BoxDecoration get gradientPrimaryToBlueGrayDecoration => BoxDecoration(
        borderRadius: BorderRadius.circular(32.h),
        gradient: LinearGradient(
          begin: Alignment(0.46, 0),
          end: Alignment(0.46, 1),
          colors: [
            theme.colorScheme.primary,
            appTheme.blueGray600,
          ],
        ),
      );

  // Outline button style
  static ButtonStyle get outlineTL24 => OutlinedButton.styleFrom(
        backgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24.h),
        ),
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
