/*
* File : App Theme
* Version : 1.0.0
* */

// Copyright 2021 The FlutX Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

/// [PATextStyle] - gives 13 different type of styles to the text on the basis of size
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// import 'app_theme.dart';

enum PATextType {
  displayLarge,
  displayMedium,
  displaySmall,
  headlineLarge,
  headlineMedium,
  headlineSmall,
  titleLarge,
  titleMedium,
  titleSmall,
  bodyLarge,
  bodyMedium,
  bodySmall,
  labelLarge,
  labelMedium,
  labelSmall,

  @Deprecated('use')
  h4,
  @Deprecated('use')
  h5,
  @Deprecated('use')
  h6,
  @Deprecated('use')
  sh1,
  @Deprecated('use')
  sh2,
  @Deprecated('use')
  button,
  @Deprecated('use')
  caption,
  @Deprecated('use')
  overline,

// Material Design 3
  @Deprecated('use')
  d1,
  @Deprecated('use')
  d2,
  @Deprecated('use')
  d3,
  @Deprecated('use')
  h1,
  @Deprecated('use')
  h2,
  @Deprecated('use')
  h3,
  @Deprecated('use')
  t1,
  @Deprecated('use')
  t2,
  @Deprecated('use')
  t3,
  @Deprecated('use')
  l1,
  @Deprecated('use')
  l2,
  @Deprecated('use')
  l3,
  @Deprecated('use')
  b1,
  @Deprecated('use')
  b2,
  @Deprecated('use')
  b3
}

class PATextStyle {
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

  static Map<PATextType, double> _defaultTextSize = {
    // Material Design 3

    PATextType.displayLarge: 57,
    PATextType.displayMedium: 45,
    PATextType.displaySmall: 36,

    PATextType.headlineLarge: 32,
    PATextType.headlineMedium: 28,
    PATextType.headlineSmall: 26,

    PATextType.titleLarge: 22,
    PATextType.titleMedium: 16,
    PATextType.titleSmall: 14,

    PATextType.labelLarge: 14,
    PATextType.labelMedium: 12,
    PATextType.labelSmall: 11,

    PATextType.bodyLarge: 16,
    PATextType.bodyMedium: 14,
    PATextType.bodySmall: 12,

    // @Deprecated('')
    PATextType.h4: 36,
    PATextType.h5: 25,
    PATextType.h6: 21,
    PATextType.sh1: 17,
    PATextType.sh2: 15,
    PATextType.button: 13,
    PATextType.caption: 12,
    PATextType.overline: 10,

    // Material Design 3

    PATextType.d1: 57,
    PATextType.d2: 45,
    PATextType.d3: 36,

    PATextType.h1: 32,
    PATextType.h2: 28,
    PATextType.h3: 26,

    PATextType.t1: 22,
    PATextType.t2: 16,
    PATextType.t3: 14,

    PATextType.l1: 14,
    PATextType.l2: 12,
    PATextType.l3: 11,

    PATextType.b1: 16,
    PATextType.b2: 14,
    PATextType.b3: 12,
  };

  static Map<PATextType, int> _defaultTextFontWeight = {
    PATextType.displayLarge: 500,
    PATextType.displayMedium: 500,
    PATextType.displaySmall: 500,

    PATextType.headlineLarge: 500,
    PATextType.headlineMedium: 500,
    PATextType.headlineSmall: 500,

    PATextType.titleLarge: 500,
    PATextType.titleMedium: 500,
    PATextType.titleSmall: 500,

    PATextType.labelLarge: 600,
    PATextType.labelMedium: 600,
    PATextType.labelSmall: 600,

    PATextType.bodyLarge: 500,
    PATextType.bodyMedium: 500,
    PATextType.bodySmall: 500,
    //
    // // Material Design 2 (Old)
    PATextType.h4: 500,
    PATextType.h5: 500,
    PATextType.h6: 500,
    PATextType.sh1: 500,
    PATextType.sh2: 500,
    PATextType.button: 500,
    PATextType.caption: 500,
    PATextType.overline: 500,

    //Material Design 3

    PATextType.d1: 500,
    PATextType.d2: 500,
    PATextType.d3: 500,

    PATextType.h1: 500,
    PATextType.h2: 500,
    PATextType.h3: 500,

    PATextType.t1: 500,
    PATextType.t2: 500,
    PATextType.t3: 500,

    PATextType.l1: 600,
    PATextType.l2: 600,
    PATextType.l3: 600,

    PATextType.b1: 500,
    PATextType.b2: 500,
    PATextType.b3: 500,
  };

  static Map<PATextType, double> _defaultLetterSpacing = {
    PATextType.displayLarge: -0.25,
    PATextType.displayMedium: 0,
    PATextType.displaySmall: 0,

    PATextType.headlineLarge: -0.2,
    PATextType.headlineMedium: -0.15,
    PATextType.headlineSmall: 0,

    PATextType.titleLarge: 0,
    PATextType.titleMedium: 0.1,
    PATextType.titleSmall: 0.1,

    PATextType.labelLarge: 0.1,
    PATextType.labelMedium: 0.5,
    PATextType.labelSmall: 0.5,

    PATextType.bodyLarge: 0.5,
    PATextType.bodyMedium: 0.25,
    PATextType.bodySmall: 0.4,
    //
    // Deprecated
    PATextType.h4: 0,
    PATextType.h5: 0,
    PATextType.h6: 0,
    PATextType.sh1: 0.15,
    PATextType.sh2: 0.15,
    PATextType.button: 0.15,
    PATextType.caption: 0.15,
    PATextType.overline: 0.15,

    //Material Design 3
    PATextType.d1: -0.25,
    PATextType.d2: 0,
    PATextType.d3: 0,

    PATextType.h1: -0.2,
    PATextType.h2: -0.15,
    PATextType.h3: 0,

    PATextType.t1: 0,
    PATextType.t2: 0.1,
    PATextType.t3: 0.1,

    PATextType.l1: 0.1,
    PATextType.l2: 0.5,
    PATextType.l3: 0.5,

    PATextType.b1: 0.5,
    PATextType.b2: 0.25,
    PATextType.b3: 0.4,
  };

  @Deprecated('message')
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


    double? finalFontSize = fontSize != null ? fontSize : (textStyle==null?40:textStyle.fontSize);

    Color? finalColor;
    if (color == null) {
      finalColor = Colors.red;
      // Color themeColor =
      //     PAAppTheme.getThemeFromThemeMode().colorScheme.onBackground;
      // finalColor = xMuted
      //     ? themeColor.withAlpha(160)
      //     : (muted ? themeColor.withAlpha(200) : themeColor);
    } else {
      // finalColor = xMuted
      //     ? color.withAlpha(160)
      //     : (muted ? color.withAlpha(200) : color);
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

  @Deprecated('message')
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
        fontSize: fontSize ?? _defaultTextSize[PATextType.h4],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
        letterSpacing ?? _defaultLetterSpacing[PATextType.h4] ?? 0,
        fontWeight: fontWeight,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  @Deprecated('message')
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
        fontSize: fontSize ?? _defaultTextSize[PATextType.h5],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
        letterSpacing ?? _defaultLetterSpacing[PATextType.h5] ?? 0,
        fontWeight: fontWeight,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  @Deprecated('message')
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
        fontSize: fontSize ?? _defaultTextSize[PATextType.h6],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
        letterSpacing ?? _defaultLetterSpacing[PATextType.h6] ?? 0,
        fontWeight: fontWeight,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  @Deprecated('message')
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
        fontSize: fontSize ?? _defaultTextSize[PATextType.sh1],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
        letterSpacing ?? _defaultLetterSpacing[PATextType.sh1] ?? 0.15,
        fontWeight: fontWeight,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  @Deprecated('message')
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
        fontSize: fontSize ?? _defaultTextSize[PATextType.sh2],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
        letterSpacing ?? _defaultLetterSpacing[PATextType.sh2] ?? 0.15,
        fontWeight: fontWeight,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  @Deprecated('message')
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
        fontSize: fontSize ?? _defaultTextSize[PATextType.button],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
        letterSpacing ?? _defaultLetterSpacing[PATextType.button] ?? 0.15,
        fontWeight: fontWeight,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  @Deprecated('message')
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
        fontSize: fontSize ?? _defaultTextSize[PATextType.caption],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
        letterSpacing ?? _defaultLetterSpacing[PATextType.caption] ?? 0.15,
        fontWeight: fontWeight,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  @Deprecated('message')
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
        fontSize: fontSize ?? _defaultTextSize[PATextType.overline],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
        letterSpacing ?? _defaultLetterSpacing[PATextType.overline] ?? 0.15,
        fontWeight: fontWeight,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  // Material Design 3
  @Deprecated('message')
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
        fontSize: fontSize ?? _defaultTextSize[PATextType.d1],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
        letterSpacing ?? _defaultLetterSpacing[PATextType.d1] ?? -0.2,
        fontWeight: _defaultTextFontWeight[PATextType.d1] ?? 500,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  @Deprecated('message')
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
        fontSize: fontSize ?? _defaultTextSize[PATextType.d2],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
        letterSpacing ?? _defaultLetterSpacing[PATextType.d2] ?? -0.2,
        fontWeight: _defaultTextFontWeight[PATextType.d2] ?? 500,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  @Deprecated('message')
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
        fontSize: fontSize ?? _defaultTextSize[PATextType.d3],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
        letterSpacing ?? _defaultLetterSpacing[PATextType.d3] ?? -0.2,
        fontWeight: _defaultTextFontWeight[PATextType.d3] ?? 500,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  @Deprecated('message')
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
        fontSize: fontSize ?? _defaultTextSize[PATextType.h1],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
        letterSpacing ?? _defaultLetterSpacing[PATextType.h1] ?? -0.2,
        fontWeight: _defaultTextFontWeight[PATextType.h1] ?? 500,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  @Deprecated('message')
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
        fontSize: fontSize ?? _defaultTextSize[PATextType.h2],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
        letterSpacing ?? _defaultLetterSpacing[PATextType.h2] ?? -0.15,
        fontWeight: _defaultTextFontWeight[PATextType.h2] ?? 500,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  @Deprecated('message')
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
        fontSize: fontSize ?? _defaultTextSize[PATextType.h3],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
        letterSpacing ?? _defaultLetterSpacing[PATextType.h3] ?? -0.15,
        fontWeight: _defaultTextFontWeight[PATextType.h3] ?? 500,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  @Deprecated('message')
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
        fontSize: fontSize ?? _defaultTextSize[PATextType.t1],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
        letterSpacing ?? _defaultLetterSpacing[PATextType.t1] ?? -0.15,
        fontWeight: _defaultTextFontWeight[PATextType.t1] ?? 500,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  @Deprecated('message')
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
        fontSize: fontSize ?? _defaultTextSize[PATextType.t2],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
        letterSpacing ?? _defaultLetterSpacing[PATextType.t2] ?? -0.15,
        fontWeight: _defaultTextFontWeight[PATextType.t2] ?? 500,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  @Deprecated('message')
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
        fontSize: fontSize ?? _defaultTextSize[PATextType.t3],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
        letterSpacing ?? _defaultLetterSpacing[PATextType.t3] ?? -0.15,
        fontWeight: _defaultTextFontWeight[PATextType.t3] ?? 500,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  @Deprecated('message')
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
        fontSize: fontSize ?? _defaultTextSize[PATextType.l1],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
        letterSpacing ?? _defaultLetterSpacing[PATextType.l1] ?? -0.15,
        fontWeight: _defaultTextFontWeight[PATextType.l1] ?? 500,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  @Deprecated('message')
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
        fontSize: fontSize ?? _defaultTextSize[PATextType.l2],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
        letterSpacing ?? _defaultLetterSpacing[PATextType.l2] ?? -0.15,
        fontWeight: _defaultTextFontWeight[PATextType.l2] ?? 500,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  @Deprecated('message')
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
        fontSize: fontSize ?? _defaultTextSize[PATextType.l3],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
        letterSpacing ?? _defaultLetterSpacing[PATextType.l3] ?? -0.15,
        fontWeight: _defaultTextFontWeight[PATextType.l3] ?? 500,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  @Deprecated('message')
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
        fontSize: fontSize ?? _defaultTextSize[PATextType.b1],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
        letterSpacing ?? _defaultLetterSpacing[PATextType.b1] ?? 0.15,
        fontWeight: _defaultTextFontWeight[PATextType.b1] ?? 500,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  @Deprecated('message')
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
        fontSize: fontSize ?? _defaultTextSize[PATextType.b2],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
        letterSpacing ?? _defaultLetterSpacing[PATextType.b2] ?? 0.15,
        fontWeight: _defaultTextFontWeight[PATextType.b2] ?? 500,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  @Deprecated('message')
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
        fontSize: fontSize ?? _defaultTextSize[PATextType.b3],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
        letterSpacing ?? _defaultLetterSpacing[PATextType.b3] ?? 0.15,
        fontWeight: _defaultTextFontWeight[PATextType.b3] ?? 500,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  // Material Design 3
  static TextStyle displayLarge(
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
        fontSize: fontSize ?? _defaultTextSize[PATextType.displayLarge],
        color: color,
        height: height,
        muted: muted,
        letterSpacing: letterSpacing ??
            _defaultLetterSpacing[PATextType.displayLarge] ??
            -0.2,
        fontWeight: _defaultTextFontWeight[PATextType.displayLarge] ?? 500,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  static TextStyle displayMedium(
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
        fontSize: fontSize ?? _defaultTextSize[PATextType.displayMedium],
        color: color,
        height: height,
        muted: muted,
        letterSpacing: letterSpacing ??
            _defaultLetterSpacing[PATextType.displayMedium] ??
            -0.2,
        fontWeight: _defaultTextFontWeight[PATextType.displayMedium] ?? 500,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  static TextStyle displaySmall(
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
        fontSize: fontSize ?? _defaultTextSize[PATextType.displaySmall],
        color: color,
        height: height,
        muted: muted,
        letterSpacing: letterSpacing ??
            _defaultLetterSpacing[PATextType.displaySmall] ??
            -0.2,
        fontWeight: _defaultTextFontWeight[PATextType.displaySmall] ?? 500,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  static TextStyle headlineLarge(
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
        fontSize: fontSize ?? _defaultTextSize[PATextType.headlineLarge],
        color: color,
        height: height,
        muted: muted,
        letterSpacing: letterSpacing ??
            _defaultLetterSpacing[PATextType.headlineLarge] ??
            -0.2,
        fontWeight: _defaultTextFontWeight[PATextType.headlineLarge] ?? 500,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  static TextStyle headlineMedium(
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
        fontSize: fontSize ?? _defaultTextSize[PATextType.headlineMedium],
        color: color,
        height: height,
        muted: muted,
        letterSpacing: letterSpacing ??
            _defaultLetterSpacing[PATextType.headlineMedium] ??
            -0.15,
        fontWeight: _defaultTextFontWeight[PATextType.headlineMedium] ?? 500,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  static TextStyle headlineSmall(
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
        fontSize: fontSize ?? _defaultTextSize[PATextType.headlineSmall],
        color: color,
        height: height,
        muted: muted,
        letterSpacing: letterSpacing ??
            _defaultLetterSpacing[PATextType.headlineSmall] ??
            -0.15,
        fontWeight: _defaultTextFontWeight[PATextType.headlineSmall] ?? 500,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  static TextStyle titleLarge(
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
        fontSize: fontSize ?? _defaultTextSize[PATextType.titleLarge],
        color: color,
        height: height,
        muted: muted,
        letterSpacing: letterSpacing ??
            _defaultLetterSpacing[PATextType.titleLarge] ??
            -0.15,
        fontWeight: _defaultTextFontWeight[PATextType.titleLarge] ?? 500,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  static TextStyle titleMedium(
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
        fontSize: fontSize ?? _defaultTextSize[PATextType.titleMedium],
        color: color,
        height: height,
        muted: muted,
        letterSpacing: letterSpacing ??
            _defaultLetterSpacing[PATextType.titleMedium] ??
            -0.15,
        fontWeight: _defaultTextFontWeight[PATextType.titleMedium] ?? 500,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  static TextStyle titleSmall(
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
        fontSize: fontSize ?? _defaultTextSize[PATextType.titleSmall],
        color: color,
        height: height,
        muted: muted,
        letterSpacing: letterSpacing ??
            _defaultLetterSpacing[PATextType.titleSmall] ??
            -0.15,
        fontWeight: _defaultTextFontWeight[PATextType.titleSmall] ?? 500,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  static TextStyle labelLarge(
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
        fontSize: fontSize ?? _defaultTextSize[PATextType.labelLarge],
        color: color,
        height: height,
        muted: muted,
        letterSpacing: letterSpacing ??
            _defaultLetterSpacing[PATextType.labelLarge] ??
            -0.15,
        fontWeight: _defaultTextFontWeight[PATextType.labelLarge] ?? 500,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  static TextStyle labelMedium(
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
        fontSize: fontSize ?? _defaultTextSize[PATextType.labelMedium],
        color: color,
        height: height,
        muted: muted,
        letterSpacing: letterSpacing ??
            _defaultLetterSpacing[PATextType.labelMedium] ??
            -0.15,
        fontWeight: _defaultTextFontWeight[PATextType.labelMedium] ?? 500,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  static TextStyle labelSmall(
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
        fontSize: fontSize ?? _defaultTextSize[PATextType.labelSmall],
        color: color,
        height: height,
        muted: muted,
        letterSpacing: letterSpacing ??
            _defaultLetterSpacing[PATextType.labelSmall] ??
            -0.15,
        fontWeight: _defaultTextFontWeight[PATextType.labelSmall] ?? 500,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  static TextStyle bodyLarge(
      {TextStyle? textStyle,
        int? fontWeight,
        bool muted = false,
        bool xMuted = false,
        double? letterSpacing,
        Color? color,
        TextDecoration decoration = TextDecoration.none,
        double? height,
        double wordSpacing = 0,
        double? fontSize}) {
    return getStyle(
        fontSize: fontSize ?? _defaultTextSize[PATextType.bodyLarge],
        color: color,
        height: height,
        muted: muted,
        letterSpacing: letterSpacing ??
            _defaultLetterSpacing[PATextType.bodyLarge] ??
            0.15,
        fontWeight: fontWeight ?? _defaultTextFontWeight[PATextType.bodyLarge] ?? 500,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  static TextStyle bodyMedium(
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
        fontSize: fontSize ?? _defaultTextSize[PATextType.bodyMedium],
        color: color,
        height: height,
        muted: muted,
        letterSpacing: letterSpacing ??
            _defaultLetterSpacing[PATextType.bodyMedium] ??
            0.15,
        fontWeight: _defaultTextFontWeight[PATextType.bodyMedium] ?? 500,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  static TextStyle bodySmall(
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
        fontSize: fontSize ?? _defaultTextSize[PATextType.bodySmall],
        color: color,
        height: height,
        muted: muted,
        letterSpacing: letterSpacing ??
            _defaultLetterSpacing[PATextType.bodySmall] ??
            0.15,
        fontWeight: _defaultTextFontWeight[PATextType.bodySmall] ?? 500,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  static void changeFontFamily(Function fontFamily) {
    PATextStyle._fontFamily = fontFamily;
  }

  static void changeDefaultFontWeight(Map<int, FontWeight> defaultFontWeight) {
    PATextStyle._defaultFontWeight = defaultFontWeight;
  }

  static void changeDefaultTextSize(Map<PATextType, double> defaultTextSize) {
    PATextStyle._defaultTextSize = defaultTextSize;
  }

  static Map<PATextType, double> get defaultTextSize => _defaultTextSize;

  static Map<PATextType, double> get defaultLetterSpacing =>
      _defaultLetterSpacing;

  static Map<PATextType, int> get defaultTextFontWeight =>
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

      PATextType.displayLarge: 57,
      PATextType.displayMedium: 45,
      PATextType.displaySmall: 36,

      PATextType.headlineLarge: 32,
      PATextType.headlineMedium: 28,
      PATextType.headlineSmall: 26,

      PATextType.titleLarge: 22,
      PATextType.titleMedium: 16,
      PATextType.titleSmall: 14,

      PATextType.labelLarge: 14,
      PATextType.labelMedium: 12,
      PATextType.labelSmall: 11,

      PATextType.bodyLarge: 16,
      PATextType.bodyMedium: 14,
      PATextType.bodySmall: 12,

      PATextType.h4: 36,
      PATextType.h5: 25,
      PATextType.h6: 21,
      PATextType.sh1: 17,
      PATextType.sh2: 15,
      PATextType.button: 13,
      PATextType.caption: 12,
      PATextType.overline: 10,

      // Material Design 3

      PATextType.d1: 57,
      PATextType.d2: 45,
      PATextType.d3: 36,

      PATextType.h1: 32,
      PATextType.h2: 28,
      PATextType.h3: 26,

      PATextType.t1: 22,
      PATextType.t2: 16,
      PATextType.t3: 14,

      PATextType.l1: 14,
      PATextType.l2: 12,
      PATextType.l3: 11,

      PATextType.b1: 16,
      PATextType.b2: 14,
      PATextType.b3: 12,
    };

    _defaultTextFontWeight = {

      PATextType.displayLarge: 500,
      PATextType.displayMedium: 500,
      PATextType.displaySmall: 500,

      PATextType.headlineLarge: 500,
      PATextType.headlineMedium: 500,
      PATextType.headlineSmall: 500,

      PATextType.titleLarge: 500,
      PATextType.titleMedium: 500,
      PATextType.titleSmall: 500,

      PATextType.labelLarge: 600,
      PATextType.labelMedium: 600,
      PATextType.labelSmall: 600,

      PATextType.bodyLarge: 500,
      PATextType.bodyMedium: 500,
      PATextType.bodySmall: 500,


      // Material Design 2 (Old)
      PATextType.h4: 500,
      PATextType.h5: 500,
      PATextType.h6: 500,
      PATextType.sh1: 500,
      PATextType.sh2: 500,
      PATextType.button: 500,
      PATextType.caption: 500,
      PATextType.overline: 500,

      //Material Design 3

      PATextType.d1: 500,
      PATextType.d2: 500,
      PATextType.d3: 500,

      PATextType.h1: 500,
      PATextType.h2: 500,
      PATextType.h3: 500,

      PATextType.t1: 500,
      PATextType.t2: 500,
      PATextType.t3: 500,

      PATextType.l1: 600,
      PATextType.l2: 600,
      PATextType.l3: 600,

      PATextType.b1: 500,
      PATextType.b2: 500,
      PATextType.b3: 500,
    };

    _defaultLetterSpacing = {

      PATextType.displayLarge: -0.25,
      PATextType.displayMedium: 0,
      PATextType.displaySmall: 0,

      PATextType.headlineLarge: -0.2,
      PATextType.headlineMedium: -0.15,
      PATextType.headlineSmall: 0,

      PATextType.titleLarge: 0,
      PATextType.titleMedium: 0.1,
      PATextType.titleSmall: 0.1,

      PATextType.labelLarge: 0.1,
      PATextType.labelMedium: 0.5,
      PATextType.labelSmall: 0.5,

      PATextType.bodyLarge: 0.5,
      PATextType.bodyMedium: 0.25,
      PATextType.bodySmall: 0.4,

      //@deprecated
      PATextType.h4: 0,
      PATextType.h5: 0,
      PATextType.h6: 0,
      PATextType.sh1: 0.15,
      PATextType.sh2: 0.15,
      PATextType.button: 0.15,
      PATextType.caption: 0.15,
      PATextType.overline: 0.15,

      //Material Design 3
      PATextType.d1: -0.25,
      PATextType.d2: 0,
      PATextType.d3: 0,

      PATextType.h1: -0.2,
      PATextType.h2: -0.15,
      PATextType.h3: 0,

      PATextType.t1: 0,
      PATextType.t2: 0.1,
      PATextType.t3: 0.1,

      PATextType.l1: 0.1,
      PATextType.l2: 0.5,
      PATextType.l3: 0.5,

      PATextType.b1: 0.5,
      PATextType.b2: 0.25,
      PATextType.b3: 0.4,
    };
  }
}
