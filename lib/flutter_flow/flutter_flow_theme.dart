// ignore_for_file: overridden_fields, annotate_overrides

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:shared_preferences/shared_preferences.dart';

const kThemeModeKey = '__theme_mode__';
SharedPreferences _prefs;

abstract class FlutterFlowTheme {
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static ThemeMode get themeMode {
    final darkMode = _prefs?.getBool(kThemeModeKey);
    return darkMode == null
        ? ThemeMode.system
        : darkMode
            ? ThemeMode.dark
            : ThemeMode.light;
  }

  static void saveThemeMode(ThemeMode mode) => mode == ThemeMode.system
      ? _prefs?.remove(kThemeModeKey)
      : _prefs?.setBool(kThemeModeKey, mode == ThemeMode.dark);

  static FlutterFlowTheme of(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark
          ? DarkModeTheme()
          : LightModeTheme();

  Color primaryColor;
  Color secondaryColor;
  Color tertiaryColor;
  Color alternate;
  Color primaryBackground;
  Color secondaryBackground;
  Color primaryText;
  Color secondaryText;

  Color customColor1;

  TextStyle get title1 => TextStyle(
        fontFamily: 'Advent Sanslogo',
        color: primaryText,
        fontWeight: FontWeight.bold,
        fontSize: 30,
      );
  TextStyle get title2 => TextStyle(
        fontFamily: 'Advent Sanslogo',
        color: secondaryText,
        fontWeight: FontWeight.w600,
        fontSize: 22,
      );
  TextStyle get title3 => TextStyle(
        fontFamily: 'OpensSans',
        color: primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 20,
      );
  TextStyle get subtitle1 => TextStyle(
        fontFamily: 'OpensSans',
        color: primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 18,
      );
  TextStyle get subtitle2 => TextStyle(
        fontFamily: 'OpensSans',
        color: secondaryText,
        fontWeight: FontWeight.w600,
        fontSize: 16,
      );
  TextStyle get bodyText1 => TextStyle(
        fontFamily: 'OpensSans',
        color: primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 14,
      );
  TextStyle get bodyText2 => TextStyle(
        fontFamily: 'OpensSans',
        color: secondaryText,
        fontWeight: FontWeight.w600,
        fontSize: 14,
      );
}

class LightModeTheme extends FlutterFlowTheme {
  Color primaryColor = const Color(0xFF033669);
  Color secondaryColor = const Color(0xFFE36520);
  Color tertiaryColor = const Color(0xFFAD843D);
  Color alternate = const Color(0xFF284445);
  Color primaryBackground = const Color(0xFFFFFFFF);
  Color secondaryBackground = const Color(0xFFEBEBEB);
  Color primaryText = const Color(0xFF000000);
  Color secondaryText = const Color(0xFF3F3F3F);

  Color customColor1 = Color(0xFF368EE8);
}

class DarkModeTheme extends FlutterFlowTheme {
  Color primaryColor = const Color(0xFF033669);
  Color secondaryColor = const Color(0xFFE36520);
  Color tertiaryColor = const Color(0xFFAD843D);
  Color alternate = const Color(0xFF284445);
  Color primaryBackground = const Color(0xFF000000);
  Color secondaryBackground = const Color(0x00000000);
  Color primaryText = const Color(0xFFFFFFFF);
  Color secondaryText = const Color(0xFFB3B3B3);

  Color customColor1 = Color(0xFF011C3A);
}

extension TextStyleHelper on TextStyle {
  TextStyle override({
    String fontFamily,
    Color color,
    double fontSize,
    FontWeight fontWeight,
    FontStyle fontStyle,
    bool useGoogleFonts = true,
    TextDecoration decoration,
    double lineHeight,
  }) =>
      useGoogleFonts
          ? GoogleFonts.getFont(
              fontFamily,
              color: color ?? this.color,
              fontSize: fontSize ?? this.fontSize,
              fontWeight: fontWeight ?? this.fontWeight,
              fontStyle: fontStyle ?? this.fontStyle,
              decoration: decoration,
              height: lineHeight,
            )
          : copyWith(
              fontFamily: fontFamily,
              color: color,
              fontSize: fontSize,
              fontWeight: fontWeight,
              fontStyle: fontStyle,
              decoration: decoration,
              height: lineHeight,
            );
}
