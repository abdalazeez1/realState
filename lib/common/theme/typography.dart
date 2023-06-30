import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

part 'font.dart';

TextTheme appTextTheme(BuildContext context, TextTheme base, Color textColor) {
  return base
      .copyWith(
        headlineLarge: base.headlineLarge?.copyWith(
          fontSize: _FontSize.text_64,
          // fontWeight: _regular,
        ),
        headlineMedium: base.headlineMedium?.copyWith(
          fontSize: _FontSize.text_36,
          fontWeight: _extraBold,
        ),
        headlineSmall: base.headlineSmall?.copyWith(
          fontSize: _FontSize.text_24,
          fontWeight: _extraBold,
        ),
        titleLarge: base.titleLarge?.copyWith(
          fontSize: _FontSize.text_22,
          fontWeight: _bold,
        ),
        titleMedium: base.titleMedium?.copyWith(
          fontSize: _FontSize.text_20,
          fontWeight: _extraBold,
        ),
        titleSmall: base.titleSmall?.copyWith(
          fontSize: _FontSize.text_18,
          fontWeight: _regular,
        ),
        bodyLarge: base.bodyLarge?.copyWith(
          fontSize: _FontSize.text_16,
          fontWeight: _semiBold,
        ),
        bodyMedium: base.bodyMedium?.copyWith(
          fontSize: _FontSize.text_13,
          fontWeight: _regular,
        ),
        bodySmall: base.bodySmall?.copyWith(
          fontSize: _FontSize.text_11,
          fontWeight: _regular,
        ),
      )
      .apply(displayColor: textColor, bodyColor: textColor);
}
