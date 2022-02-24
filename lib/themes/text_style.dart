
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_themes.dart';

enum PaTextType {
  h4,
  h5,
  h6,
  sh1,
  sh2,
  button,
  caption,
  overline,

  // Material Design 3
  d1,
  d2,
  d3,
  h1,
  h2,
  h3,
  t1,
  t2,
  t3,
  l1,
  l2,
  l3,
  b1,
  b2,
  b3
}

class PaTextStyle {
  static Function _fontFamily = GoogleFonts.ibmPlexSans;

  static Map<int, FontWeight> _defaultFontWeight = {
    100: FontWeight.w100,
    200: FontWeight.w200,
    300: FontWeight.w300,
    400: FontWeight.w300,
    500: FontWeight.w400,
    600: FontWeight.w500,
    700: FontWeight.w600,
    800: FontWeight.w700,
    900: FontWeight.w800,
  };

  static Map<PaTextType, double> _defaultTextSize = {
    PaTextType.h4: 36,
    PaTextType.h5: 25,
    PaTextType.h6: 21,
    PaTextType.sh1: 17,
    PaTextType.sh2: 15,
    PaTextType.button: 13,
    PaTextType.caption: 12,
    PaTextType.overline: 10,

    // Material Design 3

    PaTextType.d1: 57,
    PaTextType.d2: 45,
    PaTextType.d3: 36,

    PaTextType.h1: 32,
    PaTextType.h2: 28,
    PaTextType.h3: 26,

    PaTextType.t1: 22,
    PaTextType.t2: 16,
    PaTextType.t3: 14,

    PaTextType.l1: 14,
    PaTextType.l2: 12,
    PaTextType.l3: 11,

    PaTextType.b1: 16,
    PaTextType.b2: 14,
    PaTextType.b3: 12,
  };

  static Map<PaTextType, int> _defaultTextFontWeight = {
    // Material Design 2 (Old)
    PaTextType.h4: 500,
    PaTextType.h5: 500,
    PaTextType.h6: 500,
    PaTextType.sh1: 500,
    PaTextType.sh2: 500,
    PaTextType.button: 500,
    PaTextType.caption: 500,
    PaTextType.overline: 500,

    //Material Design 3

    PaTextType.d1: 500,
    PaTextType.d2: 500,
    PaTextType.d3: 500,

    PaTextType.h1: 500,
    PaTextType.h2: 500,
    PaTextType.h3: 500,

    PaTextType.t1: 500,
    PaTextType.t2: 500,
    PaTextType.t3: 500,

    PaTextType.l1: 600,
    PaTextType.l2: 600,
    PaTextType.l3: 600,

    PaTextType.b1: 500,
    PaTextType.b2: 500,
    PaTextType.b3: 500,
  };

  static Map<PaTextType, double> _defaultLetterSpacing = {
    PaTextType.h4: 0,
    PaTextType.h5: 0,
    PaTextType.h6: 0,
    PaTextType.sh1: 0.15,
    PaTextType.sh2: 0.15,
    PaTextType.button: 0.15,
    PaTextType.caption: 0.15,
    PaTextType.overline: 0.15,

    //Material Design 3
    PaTextType.d1: -0.25,
    PaTextType.d2: 0,
    PaTextType.d3: 0,

    PaTextType.h1: -0.2,
    PaTextType.h2: -0.15,
    PaTextType.h3: 0,

    PaTextType.t1: 0,
    PaTextType.t2: 0.1,
    PaTextType.t3: 0.1,

    PaTextType.l1: 0.1,
    PaTextType.l2: 0.5,
    PaTextType.l3: 0.5,

    PaTextType.b1: 0.5,
    PaTextType.b2: 0.25,
    PaTextType.b3: 0.4,
  };

  static TextStyle getStyle(
      {TextStyle? textStyle,
        int? fontWeight = 500,
        bool muted = false,
        bool xMuted = false,
        double letterSpacing = 0.15,
        Color? color,
        TextDecoration decoration = TextDecoration.none,
        double? height,
        double wordSpacing = 0,
        double? fontSize}) {
    double? finalFontSize = fontSize != null ? fontSize : textStyle!.fontSize;

    Color? finalColor;
    if (color == null) {
      Color themeColor =
          PaAppTheme.getThemeFromThemeMode().colorScheme.onBackground;
      finalColor = xMuted
          ? themeColor.withAlpha(160)
          : (muted ? themeColor.withAlpha(200) : themeColor);
    } else {
      finalColor = xMuted
          ? color.withAlpha(160)
          : (muted ? color.withAlpha(200) : color);
    }

    return _fontFamily(
        fontSize: finalFontSize,
        fontWeight: _defaultFontWeight[fontWeight] ?? FontWeight.w400,
        letterSpacing: letterSpacing,
        color: finalColor,
        decoration: decoration,
        height: height,
        wordSpacing: wordSpacing);
  }

  static TextStyle h4(
      {TextStyle? textStyle,
        int fontWeight = 500,
        bool muted = false,
        bool xMuted = false,
        double? letterSpacing,
        Color? color,
        TextDecoration decoration = TextDecoration.none,
        double? height,
        double wordSpacing = 0,
        double? fontSize}) {
    return getStyle(
        fontSize: fontSize ?? _defaultTextSize[PaTextType.h4],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
        letterSpacing ?? _defaultLetterSpacing[PaTextType.h4] ?? 0,
        fontWeight: fontWeight,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  static TextStyle h5(
      {TextStyle? textStyle,
        int fontWeight = 500,
        bool muted = false,
        bool xMuted = false,
        double? letterSpacing,
        Color? color,
        TextDecoration decoration = TextDecoration.none,
        double? height,
        double wordSpacing = 0,
        double? fontSize}) {
    return getStyle(
        fontSize: fontSize ?? _defaultTextSize[PaTextType.h5],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
        letterSpacing ?? _defaultLetterSpacing[PaTextType.h5] ?? 0,
        fontWeight: fontWeight,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  static TextStyle h6(
      {TextStyle? textStyle,
        int fontWeight = 500,
        bool muted = false,
        bool xMuted = false,
        double? letterSpacing,
        Color? color,
        TextDecoration decoration = TextDecoration.none,
        double? height,
        double wordSpacing = 0,
        double? fontSize}) {
    return getStyle(
        fontSize: fontSize ?? _defaultTextSize[PaTextType.h6],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
        letterSpacing ?? _defaultLetterSpacing[PaTextType.h6] ?? 0,
        fontWeight: fontWeight,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  static TextStyle sh1(
      {TextStyle? textStyle,
        int fontWeight = 500,
        bool muted = false,
        bool xMuted = false,
        double? letterSpacing,
        Color? color,
        TextDecoration decoration = TextDecoration.none,
        double? height,
        double wordSpacing = 0,
        double? fontSize}) {
    return getStyle(
        fontSize: fontSize ?? _defaultTextSize[PaTextType.sh1],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
        letterSpacing ?? _defaultLetterSpacing[PaTextType.sh1] ?? 0.15,
        fontWeight: fontWeight,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  static TextStyle sh2(
      {TextStyle? textStyle,
        int fontWeight = 500,
        bool muted = false,
        bool xMuted = false,
        double? letterSpacing,
        Color? color,
        TextDecoration decoration = TextDecoration.none,
        double? height,
        double wordSpacing = 0,
        double? fontSize}) {
    return getStyle(
        fontSize: fontSize ?? _defaultTextSize[PaTextType.sh2],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
        letterSpacing ?? _defaultLetterSpacing[PaTextType.sh2] ?? 0.15,
        fontWeight: fontWeight,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  static TextStyle button(
      {TextStyle? textStyle,
        int fontWeight = 500,
        bool muted = false,
        bool xMuted = false,
        double? letterSpacing,
        Color? color,
        TextDecoration decoration = TextDecoration.none,
        double? height,
        double wordSpacing = 0,
        double? fontSize}) {
    return getStyle(
        fontSize: fontSize ?? _defaultTextSize[PaTextType.button],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
        letterSpacing ?? _defaultLetterSpacing[PaTextType.button] ?? 0.15,
        fontWeight: fontWeight,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  static TextStyle caption(
      {TextStyle? textStyle,
        int fontWeight = 500,
        bool muted = false,
        bool xMuted = false,
        double? letterSpacing = 0,
        Color? color,
        TextDecoration decoration = TextDecoration.none,
        double? height,
        double wordSpacing = 0,
        double? fontSize}) {
    return getStyle(
        fontSize: fontSize ?? _defaultTextSize[PaTextType.caption],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
        letterSpacing ?? _defaultLetterSpacing[PaTextType.caption] ?? 0.15,
        fontWeight: fontWeight,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  static TextStyle overline(
      {TextStyle? textStyle,
        int fontWeight = 500,
        bool muted = false,
        bool xMuted = false,
        double? letterSpacing,
        Color? color,
        TextDecoration decoration = TextDecoration.none,
        double? height,
        double wordSpacing = 0,
        double? fontSize}) {
    return getStyle(
        fontSize: fontSize ?? _defaultTextSize[PaTextType.overline],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
        letterSpacing ?? _defaultLetterSpacing[PaTextType.overline] ?? 0.15,
        fontWeight: fontWeight,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  // Material Design 3
  static TextStyle d1(
      {TextStyle? textStyle,
        int fontWeight = 500,
        bool muted = false,
        bool xMuted = false,
        double? letterSpacing,
        Color? color,
        TextDecoration decoration = TextDecoration.none,
        double? height,
        double wordSpacing = 0,
        double? fontSize}) {
    return getStyle(
        fontSize: fontSize ?? _defaultTextSize[PaTextType.d1],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
        letterSpacing ?? _defaultLetterSpacing[PaTextType.d1] ?? -0.2,
        fontWeight: _defaultTextFontWeight[PaTextType.d1] ?? 500,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  static TextStyle d2(
      {TextStyle? textStyle,
        int fontWeight = 500,
        bool muted = false,
        bool xMuted = false,
        double? letterSpacing,
        Color? color,
        TextDecoration decoration = TextDecoration.none,
        double? height,
        double wordSpacing = 0,
        double? fontSize}) {
    return getStyle(
        fontSize: fontSize ?? _defaultTextSize[PaTextType.d2],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
        letterSpacing ?? _defaultLetterSpacing[PaTextType.d2] ?? -0.2,
        fontWeight: _defaultTextFontWeight[PaTextType.d2] ?? 500,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  static TextStyle d3(
      {TextStyle? textStyle,
        int fontWeight = 500,
        bool muted = false,
        bool xMuted = false,
        double? letterSpacing,
        Color? color,
        TextDecoration decoration = TextDecoration.none,
        double? height,
        double wordSpacing = 0,
        double? fontSize}) {
    return getStyle(
        fontSize: fontSize ?? _defaultTextSize[PaTextType.d3],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
        letterSpacing ?? _defaultLetterSpacing[PaTextType.d3] ?? -0.2,
        fontWeight: _defaultTextFontWeight[PaTextType.d3] ?? 500,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  static TextStyle h1(
      {TextStyle? textStyle,
        int fontWeight = 500,
        bool muted = false,
        bool xMuted = false,
        double? letterSpacing,
        Color? color,
        TextDecoration decoration = TextDecoration.none,
        double? height,
        double wordSpacing = 0,
        double? fontSize}) {
    return getStyle(
        fontSize: fontSize ?? _defaultTextSize[PaTextType.h1],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
        letterSpacing ?? _defaultLetterSpacing[PaTextType.h1] ?? -0.2,
        fontWeight: _defaultTextFontWeight[PaTextType.h1] ?? 500,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  static TextStyle h2(
      {TextStyle? textStyle,
        int fontWeight = 500,
        bool muted = false,
        bool xMuted = false,
        double? letterSpacing,
        Color? color,
        TextDecoration decoration = TextDecoration.none,
        double? height,
        double wordSpacing = 0,
        double? fontSize}) {
    return getStyle(
        fontSize: fontSize ?? _defaultTextSize[PaTextType.h2],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
        letterSpacing ?? _defaultLetterSpacing[PaTextType.h2] ?? -0.15,
        fontWeight: _defaultTextFontWeight[PaTextType.h2] ?? 500,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  static TextStyle h3(
      {TextStyle? textStyle,
        int fontWeight = 500,
        bool muted = false,
        bool xMuted = false,
        double? letterSpacing,
        Color? color,
        TextDecoration decoration = TextDecoration.none,
        double? height,
        double wordSpacing = 0,
        double? fontSize}) {
    return getStyle(
        fontSize: fontSize ?? _defaultTextSize[PaTextType.h3],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
        letterSpacing ?? _defaultLetterSpacing[PaTextType.h3] ?? -0.15,
        fontWeight: _defaultTextFontWeight[PaTextType.h3] ?? 500,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  static TextStyle t1(
      {TextStyle? textStyle,
        int fontWeight = 500,
        bool muted = false,
        bool xMuted = false,
        double? letterSpacing,
        Color? color,
        TextDecoration decoration = TextDecoration.none,
        double? height,
        double wordSpacing = 0,
        double? fontSize}) {
    return getStyle(
        fontSize: fontSize ?? _defaultTextSize[PaTextType.t1],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
        letterSpacing ?? _defaultLetterSpacing[PaTextType.t1] ?? -0.15,
        fontWeight: _defaultTextFontWeight[PaTextType.t1] ?? 500,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  static TextStyle t2(
      {TextStyle? textStyle,
        int fontWeight = 500,
        bool muted = false,
        bool xMuted = false,
        double? letterSpacing,
        Color? color,
        TextDecoration decoration = TextDecoration.none,
        double? height,
        double wordSpacing = 0,
        double? fontSize}) {
    return getStyle(
        fontSize: fontSize ?? _defaultTextSize[PaTextType.t2],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
        letterSpacing ?? _defaultLetterSpacing[PaTextType.t2] ?? -0.15,
        fontWeight: _defaultTextFontWeight[PaTextType.t2] ?? 500,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  static TextStyle t3(
      {TextStyle? textStyle,
        int fontWeight = 500,
        bool muted = false,
        bool xMuted = false,
        double? letterSpacing,
        Color? color,
        TextDecoration decoration = TextDecoration.none,
        double? height,
        double wordSpacing = 0,
        double? fontSize}) {
    return getStyle(
        fontSize: fontSize ?? _defaultTextSize[PaTextType.t3],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
        letterSpacing ?? _defaultLetterSpacing[PaTextType.t3] ?? -0.15,
        fontWeight: _defaultTextFontWeight[PaTextType.t3] ?? 500,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  static TextStyle l1(
      {TextStyle? textStyle,
        int fontWeight = 500,
        bool muted = false,
        bool xMuted = false,
        double? letterSpacing,
        Color? color,
        TextDecoration decoration = TextDecoration.none,
        double? height,
        double wordSpacing = 0,
        double? fontSize}) {
    return getStyle(
        fontSize: fontSize ?? _defaultTextSize[PaTextType.l1],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
        letterSpacing ?? _defaultLetterSpacing[PaTextType.l1] ?? -0.15,
        fontWeight: _defaultTextFontWeight[PaTextType.l1] ?? 500,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  static TextStyle l2(
      {TextStyle? textStyle,
        int fontWeight = 500,
        bool muted = false,
        bool xMuted = false,
        double? letterSpacing,
        Color? color,
        TextDecoration decoration = TextDecoration.none,
        double? height,
        double wordSpacing = 0,
        double? fontSize}) {
    return getStyle(
        fontSize: fontSize ?? _defaultTextSize[PaTextType.l2],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
        letterSpacing ?? _defaultLetterSpacing[PaTextType.l2] ?? -0.15,
        fontWeight: _defaultTextFontWeight[PaTextType.l2] ?? 500,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  static TextStyle l3(
      {TextStyle? textStyle,
        int fontWeight = 500,
        bool muted = false,
        bool xMuted = false,
        double? letterSpacing,
        Color? color,
        TextDecoration decoration = TextDecoration.none,
        double? height,
        double wordSpacing = 0,
        double? fontSize}) {
    return getStyle(
        fontSize: fontSize ?? _defaultTextSize[PaTextType.l3],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
        letterSpacing ?? _defaultLetterSpacing[PaTextType.l3] ?? -0.15,
        fontWeight: _defaultTextFontWeight[PaTextType.l3] ?? 500,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  static TextStyle b1(
      {TextStyle? textStyle,
        int fontWeight = 500,
        bool muted = false,
        bool xMuted = false,
        double? letterSpacing,
        Color? color,
        TextDecoration decoration = TextDecoration.none,
        double? height,
        double wordSpacing = 0,
        double? fontSize}) {
    return getStyle(
        fontSize: fontSize ?? _defaultTextSize[PaTextType.b1],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
        letterSpacing ?? _defaultLetterSpacing[PaTextType.b1] ?? 0.15,
        fontWeight: _defaultTextFontWeight[PaTextType.b1] ?? 500,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  static TextStyle b2(
      {TextStyle? textStyle,
        int fontWeight = 500,
        bool muted = false,
        bool xMuted = false,
        double? letterSpacing,
        Color? color,
        TextDecoration decoration = TextDecoration.none,
        double? height,
        double wordSpacing = 0,
        double? fontSize}) {
    return getStyle(
        fontSize: fontSize ?? _defaultTextSize[PaTextType.b2],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
        letterSpacing ?? _defaultLetterSpacing[PaTextType.b2] ?? 0.15,
        fontWeight: _defaultTextFontWeight[PaTextType.b2] ?? 500,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  static TextStyle b3(
      {TextStyle? textStyle,
        int fontWeight = 500,
        bool muted = false,
        bool xMuted = false,
        double? letterSpacing,
        Color? color,
        TextDecoration decoration = TextDecoration.none,
        double? height,
        double wordSpacing = 0,
        double? fontSize}) {
    return getStyle(
        fontSize: fontSize ?? _defaultTextSize[PaTextType.b3],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
        letterSpacing ?? _defaultLetterSpacing[PaTextType.b3] ?? 0.15,
        fontWeight: _defaultTextFontWeight[PaTextType.b3] ?? 500,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  static void changeFontFamily(Function fontFamily) {
    PaTextStyle._fontFamily = fontFamily;
  }

  static void changeDefaultFontWeight(Map<int, FontWeight> defaultFontWeight) {
    PaTextStyle._defaultFontWeight = defaultFontWeight;
  }

  static void changeDefaultTextSize(Map<PaTextType, double> defaultTextSize) {
    PaTextStyle._defaultTextSize = defaultTextSize;
  }

  static Map<PaTextType, double> get defaultTextSize => _defaultTextSize;

  static Map<PaTextType, double> get defaultLetterSpacing =>
      _defaultLetterSpacing;

  static Map<PaTextType, int> get defaultTextFontWeight =>
      _defaultTextFontWeight;

  static Map<int, FontWeight> get defaultFontWeight => _defaultFontWeight;

  //-------------------Reset Font Styles---------------------------------
  static resetFontStyles() {
    _fontFamily = GoogleFonts.ibmPlexSans;

    _defaultFontWeight = {
      100: FontWeight.w100,
      200: FontWeight.w200,
      300: FontWeight.w300,
      400: FontWeight.w300,
      500: FontWeight.w400,
      600: FontWeight.w500,
      700: FontWeight.w600,
      800: FontWeight.w700,
      900: FontWeight.w800,
    };

    _defaultTextSize = {
      PaTextType.h4: 36,
      PaTextType.h5: 25,
      PaTextType.h6: 21,
      PaTextType.sh1: 17,
      PaTextType.sh2: 15,
      PaTextType.button: 13,
      PaTextType.caption: 12,
      PaTextType.overline: 10,

      // Material Design 3

      PaTextType.d1: 57,
      PaTextType.d2: 45,
      PaTextType.d3: 36,

      PaTextType.h1: 32,
      PaTextType.h2: 28,
      PaTextType.h3: 26,

      PaTextType.t1: 22,
      PaTextType.t2: 16,
      PaTextType.t3: 14,

      PaTextType.l1: 14,
      PaTextType.l2: 12,
      PaTextType.l3: 11,

      PaTextType.b1: 16,
      PaTextType.b2: 14,
      PaTextType.b3: 12,
    };

    _defaultTextFontWeight = {
      // Material Design 2 (Old)
      PaTextType.h4: 500,
      PaTextType.h5: 500,
      PaTextType.h6: 500,
      PaTextType.sh1: 500,
      PaTextType.sh2: 500,
      PaTextType.button: 500,
      PaTextType.caption: 500,
      PaTextType.overline: 500,

      //Material Design 3

      PaTextType.d1: 500,
      PaTextType.d2: 500,
      PaTextType.d3: 500,

      PaTextType.h1: 500,
      PaTextType.h2: 500,
      PaTextType.h3: 500,

      PaTextType.t1: 500,
      PaTextType.t2: 500,
      PaTextType.t3: 500,

      PaTextType.l1: 600,
      PaTextType.l2: 600,
      PaTextType.l3: 600,

      PaTextType.b1: 500,
      PaTextType.b2: 500,
      PaTextType.b3: 500,
    };

    _defaultLetterSpacing = {
      PaTextType.h4: 0,
      PaTextType.h5: 0,
      PaTextType.h6: 0,
      PaTextType.sh1: 0.15,
      PaTextType.sh2: 0.15,
      PaTextType.button: 0.15,
      PaTextType.caption: 0.15,
      PaTextType.overline: 0.15,

      //Material Design 3
      PaTextType.d1: -0.25,
      PaTextType.d2: 0,
      PaTextType.d3: 0,

      PaTextType.h1: -0.2,
      PaTextType.h2: -0.15,
      PaTextType.h3: 0,

      PaTextType.t1: 0,
      PaTextType.t2: 0.1,
      PaTextType.t3: 0.1,

      PaTextType.l1: 0.1,
      PaTextType.l2: 0.5,
      PaTextType.l3: 0.5,

      PaTextType.b1: 0.5,
      PaTextType.b2: 0.25,
      PaTextType.b3: 0.4,
    };
  }

}