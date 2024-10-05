// ignore_for_file: overridden_fields, annotate_overrides

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class FlutterFlowTheme {
  static FlutterFlowTheme of(BuildContext context) {
    return LightModeTheme();
  }

  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary;
  late Color secondary;
  late Color tertiary;
  late Color alternate;
  late Color primaryText;
  late Color secondaryText;
  late Color primaryBackground;
  late Color secondaryBackground;
  late Color accent1;
  late Color accent2;
  late Color accent3;
  late Color accent4;
  late Color success;
  late Color warning;
  late Color error;
  late Color info;

  late Color primary100;
  late Color primary150;
  late Color primary200;
  late Color primary250;
  late Color primary300;
  late Color primary350;
  late Color primary400;
  late Color primary450;
  late Color primary500;
  late Color primary550;
  late Color primary600;
  late Color primary650;
  late Color primary700;
  late Color primary750;
  late Color primary800;
  late Color primary900;
  late Color seconday100;
  late Color seconday150;
  late Color seconday200;
  late Color seconday250;
  late Color seconday300;
  late Color seconday350;
  late Color seconday400;
  late Color seconday450;
  late Color seconday500;
  late Color seconday550;
  late Color seconday600;
  late Color seconday650;
  late Color seconday700;
  late Color seconday750;
  late Color seconday800;
  late Color seconday850;
  late Color info100;
  late Color info150;
  late Color info200;
  late Color info250;
  late Color info300;
  late Color info350;
  late Color info400;
  late Color info450;
  late Color info500;
  late Color info550;
  late Color info600;
  late Color info650;
  late Color info700;
  late Color info750;
  late Color info800;
  late Color info900;
  late Color warning200;
  late Color warning250;
  late Color warning300;
  late Color warning400;
  late Color warning450;
  late Color warning500;
  late Color warning600;
  late Color warning650;
  late Color danger200;
  late Color danger300;
  late Color danger400;
  late Color danger500;
  late Color danger600;
  late Color success200;
  late Color success300;
  late Color success400;
  late Color success500;
  late Color success600;
  late Color color5200;
  late Color color5300;
  late Color color5400;
  late Color color5500;
  late Color color5600;
  late Color netrual400;
  late Color netrual500;
  late Color netrual700;
  late Color netrual900;
  late Color netural100;

  @Deprecated('Use displaySmallFamily instead')
  String get title1Family => displaySmallFamily;
  @Deprecated('Use displaySmall instead')
  TextStyle get title1 => typography.displaySmall;
  @Deprecated('Use headlineMediumFamily instead')
  String get title2Family => typography.headlineMediumFamily;
  @Deprecated('Use headlineMedium instead')
  TextStyle get title2 => typography.headlineMedium;
  @Deprecated('Use headlineSmallFamily instead')
  String get title3Family => typography.headlineSmallFamily;
  @Deprecated('Use headlineSmall instead')
  TextStyle get title3 => typography.headlineSmall;
  @Deprecated('Use titleMediumFamily instead')
  String get subtitle1Family => typography.titleMediumFamily;
  @Deprecated('Use titleMedium instead')
  TextStyle get subtitle1 => typography.titleMedium;
  @Deprecated('Use titleSmallFamily instead')
  String get subtitle2Family => typography.titleSmallFamily;
  @Deprecated('Use titleSmall instead')
  TextStyle get subtitle2 => typography.titleSmall;
  @Deprecated('Use bodyMediumFamily instead')
  String get bodyText1Family => typography.bodyMediumFamily;
  @Deprecated('Use bodyMedium instead')
  TextStyle get bodyText1 => typography.bodyMedium;
  @Deprecated('Use bodySmallFamily instead')
  String get bodyText2Family => typography.bodySmallFamily;
  @Deprecated('Use bodySmall instead')
  TextStyle get bodyText2 => typography.bodySmall;

  String get displayLargeFamily => typography.displayLargeFamily;
  TextStyle get displayLarge => typography.displayLarge;
  String get displayMediumFamily => typography.displayMediumFamily;
  TextStyle get displayMedium => typography.displayMedium;
  String get displaySmallFamily => typography.displaySmallFamily;
  TextStyle get displaySmall => typography.displaySmall;
  String get headlineLargeFamily => typography.headlineLargeFamily;
  TextStyle get headlineLarge => typography.headlineLarge;
  String get headlineMediumFamily => typography.headlineMediumFamily;
  TextStyle get headlineMedium => typography.headlineMedium;
  String get headlineSmallFamily => typography.headlineSmallFamily;
  TextStyle get headlineSmall => typography.headlineSmall;
  String get titleLargeFamily => typography.titleLargeFamily;
  TextStyle get titleLarge => typography.titleLarge;
  String get titleMediumFamily => typography.titleMediumFamily;
  TextStyle get titleMedium => typography.titleMedium;
  String get titleSmallFamily => typography.titleSmallFamily;
  TextStyle get titleSmall => typography.titleSmall;
  String get labelLargeFamily => typography.labelLargeFamily;
  TextStyle get labelLarge => typography.labelLarge;
  String get labelMediumFamily => typography.labelMediumFamily;
  TextStyle get labelMedium => typography.labelMedium;
  String get labelSmallFamily => typography.labelSmallFamily;
  TextStyle get labelSmall => typography.labelSmall;
  String get bodyLargeFamily => typography.bodyLargeFamily;
  TextStyle get bodyLarge => typography.bodyLarge;
  String get bodyMediumFamily => typography.bodyMediumFamily;
  TextStyle get bodyMedium => typography.bodyMedium;
  String get bodySmallFamily => typography.bodySmallFamily;
  TextStyle get bodySmall => typography.bodySmall;

  Typography get typography => ThemeTypography(this);
}

class LightModeTheme extends FlutterFlowTheme {
  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary = const Color(0xFF4B39EF);
  late Color secondary = const Color(0xFF39D2C0);
  late Color tertiary = const Color(0xFFEE8B60);
  late Color alternate = const Color(0xFFE0E3E7);
  late Color primaryText = const Color(0xFF14181B);
  late Color secondaryText = const Color(0xFF57636C);
  late Color primaryBackground = const Color(0xFFF1F4F8);
  late Color secondaryBackground = const Color(0xFFFFFFFF);
  late Color accent1 = const Color(0x4C4B39EF);
  late Color accent2 = const Color(0x4D39D2C0);
  late Color accent3 = const Color(0x4DEE8B60);
  late Color accent4 = const Color(0xCCFFFFFF);
  late Color success = const Color(0xFF249689);
  late Color warning = const Color(0xFFF9CF58);
  late Color error = const Color(0xFFFF5963);
  late Color info = const Color(0xFFFFFFFF);

  late Color primary100 = const Color(0xFFF2F2FD);
  late Color primary150 = const Color(0xFFE0E1FA);
  late Color primary200 = const Color(0xFFCED0F8);
  late Color primary250 = const Color(0xFFBCBFF5);
  late Color primary300 = const Color(0xFFABAEF2);
  late Color primary350 = const Color(0xFF999DF0);
  late Color primary400 = const Color(0xFF878CED);
  late Color primary450 = const Color(0xFF757BEA);
  late Color primary500 = const Color(0xFF636AE8);
  late Color primary550 = const Color(0xFF4850E4);
  late Color primary600 = const Color(0xFF2C35E0);
  late Color primary650 = const Color(0xFF1F27CD);
  late Color primary700 = const Color(0xFF1B22B1);
  late Color primary750 = const Color(0xFF161D96);
  late Color primary800 = const Color(0xFF12177A);
  late Color primary900 = const Color(0xFF0E125E);
  late Color seconday100 = const Color(0xFFFDF1F5);
  late Color seconday150 = const Color(0xFFFBE0E8);
  late Color seconday200 = const Color(0xFFF8CEDB);
  late Color seconday250 = const Color(0xFFF5BCCE);
  late Color seconday300 = const Color(0xFFF3AAC1);
  late Color seconday350 = const Color(0xFFF098B4);
  late Color seconday400 = const Color(0xFFEE86A7);
  late Color seconday450 = const Color(0xFFEB759A);
  late Color seconday500 = const Color(0xFFE8618C);
  late Color seconday550 = const Color(0xFFE44578);
  late Color seconday600 = const Color(0xFFE02862);
  late Color seconday650 = const Color(0xFFC91D53);
  late Color seconday700 = const Color(0xFFAC1947);
  late Color seconday750 = const Color(0xFF8E143B);
  late Color seconday800 = const Color(0xFF71102F);
  late Color seconday850 = const Color(0xFF360816);
  late Color info100 = const Color(0xFFF1F8FD);
  late Color info150 = const Color(0xFFDAECFA);
  late Color info200 = const Color(0xFFC3E1F8);
  late Color info250 = const Color(0xFFACD5F5);
  late Color info300 = const Color(0xFF94C9F2);
  late Color info350 = const Color(0xFF7DBEEF);
  late Color info400 = const Color(0xFF66B2EC);
  late Color info450 = const Color(0xFF4FA6E9);
  late Color info500 = const Color(0xFF379AE6);
  late Color info550 = const Color(0xFF1D8DE3);
  late Color info600 = const Color(0xFF197DCA);
  late Color info650 = const Color(0xFF166DB0);
  late Color info700 = const Color(0xFF125D95);
  late Color info750 = const Color(0xFF0F4C7B);
  late Color info800 = const Color(0xFF0C3C61);
  late Color info900 = const Color(0xFF092C47);
  late Color warning200 = const Color(0xFFFAE7C0);
  late Color warning250 = const Color(0xFFF8DEA9);
  late Color warning300 = const Color(0xFFF6D491);
  late Color warning400 = const Color(0xFFF2C263);
  late Color warning450 = const Color(0xFFF0B94B);
  late Color warning500 = const Color(0xFFEFB034);
  late Color warning600 = const Color(0xFFD29211);
  late Color warning650 = const Color(0xFFB57E0F);
  late Color danger200 = const Color(0xFFF5C4C6);
  late Color danger300 = const Color(0xFFED9699);
  late Color danger400 = const Color(0xFFE5696D);
  late Color danger500 = const Color(0xFFDE3B40);
  late Color danger600 = const Color(0xFFC12126);
  late Color success200 = const Color(0xFFB8F5CD);
  late Color success300 = const Color(0xFF82EEA6);
  late Color success400 = const Color(0xFF4CE77F);
  late Color success500 = const Color(0xFF1DD75B);
  late Color success600 = const Color(0xFF17A948);
  late Color color5200 = const Color(0xFFF8DBD0);
  late Color color5300 = const Color(0xFFF4C2AF);
  late Color color5400 = const Color(0xFFEFA98D);
  late Color color5500 = const Color(0xFFEA916E);
  late Color color5600 = const Color(0xFFE1602C);
  late Color netrual400 = const Color(0xFFBCC1CA);
  late Color netrual500 = const Color(0xFF9095A0);
  late Color netrual700 = const Color(0xFF323842);
  late Color netrual900 = const Color(0xFF181A1F);
  late Color netural100 = const Color(0xFFFAFAFB);
}

abstract class Typography {
  String get displayLargeFamily;
  TextStyle get displayLarge;
  String get displayMediumFamily;
  TextStyle get displayMedium;
  String get displaySmallFamily;
  TextStyle get displaySmall;
  String get headlineLargeFamily;
  TextStyle get headlineLarge;
  String get headlineMediumFamily;
  TextStyle get headlineMedium;
  String get headlineSmallFamily;
  TextStyle get headlineSmall;
  String get titleLargeFamily;
  TextStyle get titleLarge;
  String get titleMediumFamily;
  TextStyle get titleMedium;
  String get titleSmallFamily;
  TextStyle get titleSmall;
  String get labelLargeFamily;
  TextStyle get labelLarge;
  String get labelMediumFamily;
  TextStyle get labelMedium;
  String get labelSmallFamily;
  TextStyle get labelSmall;
  String get bodyLargeFamily;
  TextStyle get bodyLarge;
  String get bodyMediumFamily;
  TextStyle get bodyMedium;
  String get bodySmallFamily;
  TextStyle get bodySmall;
}

class ThemeTypography extends Typography {
  ThemeTypography(this.theme);

  final FlutterFlowTheme theme;

  String get displayLargeFamily => 'Archivo';
  TextStyle get displayLarge => GoogleFonts.getFont(
        'Archivo',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 64.0,
      );
  String get displayMediumFamily => 'Archivo';
  TextStyle get displayMedium => GoogleFonts.getFont(
        'Archivo',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 44.0,
      );
  String get displaySmallFamily => 'Archivo';
  TextStyle get displaySmall => GoogleFonts.getFont(
        'Archivo',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 36.0,
      );
  String get headlineLargeFamily => 'Archivo';
  TextStyle get headlineLarge => GoogleFonts.getFont(
        'Archivo',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 32.0,
      );
  String get headlineMediumFamily => 'Archivo';
  TextStyle get headlineMedium => GoogleFonts.getFont(
        'Archivo',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 28.0,
      );
  String get headlineSmallFamily => 'Archivo';
  TextStyle get headlineSmall => GoogleFonts.getFont(
        'Archivo',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 24.0,
      );
  String get titleLargeFamily => 'Archivo';
  TextStyle get titleLarge => GoogleFonts.getFont(
        'Archivo',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 20.0,
      );
  String get titleMediumFamily => 'Archivo';
  TextStyle get titleMedium => GoogleFonts.getFont(
        'Archivo',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 18.0,
      );
  String get titleSmallFamily => 'Archivo';
  TextStyle get titleSmall => GoogleFonts.getFont(
        'Archivo',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 16.0,
      );
  String get labelLargeFamily => 'Inter';
  TextStyle get labelLarge => GoogleFonts.getFont(
        'Inter',
        color: theme.secondaryText,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
      );
  String get labelMediumFamily => 'Inter';
  TextStyle get labelMedium => GoogleFonts.getFont(
        'Inter',
        color: theme.secondaryText,
        fontWeight: FontWeight.normal,
        fontSize: 14.0,
      );
  String get labelSmallFamily => 'Inter';
  TextStyle get labelSmall => GoogleFonts.getFont(
        'Inter',
        color: theme.secondaryText,
        fontWeight: FontWeight.normal,
        fontSize: 12.0,
      );
  String get bodyLargeFamily => 'Inter';
  TextStyle get bodyLarge => GoogleFonts.getFont(
        'Inter',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
      );
  String get bodyMediumFamily => 'Inter';
  TextStyle get bodyMedium => GoogleFonts.getFont(
        'Inter',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 14.0,
      );
  String get bodySmallFamily => 'Inter';
  TextStyle get bodySmall => GoogleFonts.getFont(
        'Inter',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 12.0,
      );
}

extension TextStyleHelper on TextStyle {
  TextStyle override({
    String? fontFamily,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    double? letterSpacing,
    FontStyle? fontStyle,
    bool useGoogleFonts = true,
    TextDecoration? decoration,
    double? lineHeight,
    List<Shadow>? shadows,
  }) =>
      useGoogleFonts
          ? GoogleFonts.getFont(
              fontFamily!,
              color: color ?? this.color,
              fontSize: fontSize ?? this.fontSize,
              letterSpacing: letterSpacing ?? this.letterSpacing,
              fontWeight: fontWeight ?? this.fontWeight,
              fontStyle: fontStyle ?? this.fontStyle,
              decoration: decoration,
              height: lineHeight,
              shadows: shadows,
            )
          : copyWith(
              fontFamily: fontFamily,
              color: color,
              fontSize: fontSize,
              letterSpacing: letterSpacing,
              fontWeight: fontWeight,
              fontStyle: fontStyle,
              decoration: decoration,
              height: lineHeight,
              shadows: shadows,
            );
}
