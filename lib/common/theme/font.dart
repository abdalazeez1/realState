part of 'typography.dart';

FontWeight get _light => FontWeight.w300;

FontWeight get _regular => FontWeight.normal;

FontWeight get _medium => FontWeight.w500;

FontWeight get _semiBold => FontWeight.w600;

FontWeight get _bold => FontWeight.bold;

FontWeight get _extraBold => FontWeight.w800;

String get robotoBoldFamily => 'Roboto-Bold';

String get robotoMediumFamily => 'Roboto-Medium';

String get robotoRegularFamily => 'Roboto-Regular';

extension FamilyUtils on TextStyle {
  TextStyle get xb => copyWith(
        fontWeight: _extraBold,
      );

  TextStyle get b => copyWith(
        fontWeight: _bold,
      );

  TextStyle get sb => copyWith(
        fontWeight: _semiBold,
      );

  TextStyle get r => copyWith(
        fontWeight: _regular,
      );

  TextStyle get m => copyWith(
        fontWeight: _medium,
      );

  TextStyle get l => copyWith(
        fontWeight: _light,
      );
}

abstract class _FontSize {
  static double get text_64 => _textFontSize_64.sp;

  static const double _textFontSize_64 = 64;

  static double get text_36 => _textFontSize_36.sp;

  static const double _textFontSize_36 = 36;

  static double get text_24 => _textFontSize_24.sp;
  static const double _textFontSize_24 = 24;

  static double get text_22 => _textFontSize_22.sp;
  static const double _textFontSize_22 = 22;

  static double get text_20 => _textFontSize_20.sp;
  static const double _textFontSize_20 = 20;

  static double get text_18 => _textFontSize_18.sp;
  static const double _textFontSize_18 = 18;

  static double get text_16 => _textFontSize_16.sp;
  static const double _textFontSize_16 = 16;

  static double get text_13 => _textFontSize_13.sp;
  static const double _textFontSize_13 = 13;

  static double get text_11 => _textFontSize_11.sp;
  static const double _textFontSize_11 = 10;
}
