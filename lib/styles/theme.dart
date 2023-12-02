import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

class AwnoaTheme {
  static final _defaultLightColorScheme =
      FlexColorScheme.light(scheme: FlexScheme.tealM3).colorScheme;

  static final _defaultDarkColorScheme =
      FlexColorScheme.dark(scheme: FlexScheme.tealM3).colorScheme;

  static ThemeData lightTheme(ColorScheme? lightColorScheme) {
    return ThemeData(
      colorScheme: lightColorScheme ?? _defaultLightColorScheme,
      useMaterial3: true,
    );
  }

  static ThemeData darkTheme(ColorScheme? darkColorScheme) {
    return ThemeData(
      colorScheme: darkColorScheme ?? _defaultDarkColorScheme,
      useMaterial3: true,
    );
  }
}
