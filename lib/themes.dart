import 'package:flutter/material.dart';

abstract class MyThemes{
  static const lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xFF586400),
  onPrimary: Color(0xFFFFFFFF),
  primaryContainer: Color(0xFFDAEC7A),
  onPrimaryContainer: Color(0xFF191E00),
  secondary: Color(0xFF5D6145),
  onSecondary: Color(0xFFFFFFFF),
  secondaryContainer: Color(0xFFE2E5C2),
  onSecondaryContainer: Color(0xFF1A1D07),
  tertiary: Color(0xFF835500),
  onTertiary: Color(0xFFFFFFFF),
  tertiaryContainer: Color(0xFFFFDDB4),
  onTertiaryContainer: Color(0xFF291800),
  error: Color(0xFFBA1A1A),
  errorContainer: Color(0xFFFFDAD6),
  onError: Color(0xFFFFFFFF),
  onErrorContainer: Color(0xFF410002),
  background: Color(0xFFFFFCF4),
  onBackground: Color(0xFF1C1C17),
  surface: Color(0xFFFFFCF4),
  onSurface: Color(0xFF1C1C17),
  surfaceVariant: Color(0xFFE4E3D2),
  onSurfaceVariant: Color(0xFF47483B),
  outline: Color(0xFF77786A),
  onInverseSurface: Color(0xFFF3F1E8),
  inverseSurface: Color(0xFF31312B),
  inversePrimary: Color(0xFFBECF61),
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFF586400),
  outlineVariant: Color(0xFFC8C7B7),
  scrim: Color(0xFF000000),
);

static const darkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xFFBECF61),
  onPrimary: Color(0xFF2C3400),
  primaryContainer: Color(0xFF414B00),
  onPrimaryContainer: Color(0xFFDAEC7A),
  secondary: Color(0xFFC6C9A7),
  onSecondary: Color(0xFF2F321A),
  secondaryContainer: Color(0xFF45492F),
  onSecondaryContainer: Color(0xFFE2E5C2),
  tertiary: Color(0xFFFFB953),
  onTertiary: Color(0xFF452B00),
  tertiaryContainer: Color(0xFF633F00),
  onTertiaryContainer: Color(0xFFFFDDB4),
  error: Color(0xFFFFB4AB),
  errorContainer: Color(0xFF93000A),
  onError: Color(0xFF690005),
  onErrorContainer: Color(0xFFFFDAD6),
  background: Color(0xFF1C1C17),
  onBackground: Color(0xFFE5E2DA),
  surface: Color(0xFF1C1C17),
  onSurface: Color(0xFFE5E2DA),
  surfaceVariant: Color(0xFF47483B),
  onSurfaceVariant: Color(0xFFC8C7B7),
  outline: Color(0xFF919283),
  onInverseSurface: Color(0xFF1C1C17),
  inverseSurface: Color(0xFFE5E2DA),
  inversePrimary: Color(0xFF586400),
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFFBECF61),
  outlineVariant: Color(0xFF47483B),
  scrim: Color(0xFF000000),
);
}