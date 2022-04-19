
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_themes.dart';

enum PaTextType {
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
            // Material Design 3

            PaTextType.displayLarge: 57,
            PaTextType.displayMedium: 45,
            PaTextType.displaySmall: 36,

            PaTextType.headlineLarge: 32,
            PaTextType.headlineMedium: 28,
            PaTextType.headlineSmall: 26,

            PaTextType.titleLarge: 22,
            PaTextType.titleMedium: 16,
            PaTextType.titleSmall: 14,

            PaTextType.labelLarge: 14,
            PaTextType.labelMedium: 12,
            PaTextType.labelSmall: 11,

            PaTextType.bodyLarge: 16,
            PaTextType.bodyMedium: 14,
            PaTextType.bodySmall: 12,

            // @Deprecated('')
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
            PaTextType.displayLarge: 500,
            PaTextType.displayMedium: 500,
            PaTextType.displaySmall: 500,

            PaTextType.headlineLarge: 500,
            PaTextType.headlineMedium: 500,
            PaTextType.headlineSmall: 500,

            PaTextType.titleLarge: 500,
            PaTextType.titleMedium: 500,
            PaTextType.titleSmall: 500,

            PaTextType.labelLarge: 600,
            PaTextType.labelMedium: 600,
            PaTextType.labelSmall: 600,

            PaTextType.bodyLarge: 500,
            PaTextType.bodyMedium: 500,
            PaTextType.bodySmall: 500,
            //
            // // Material Design 2 (Old)
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
            PaTextType.displayLarge: -0.25,
            PaTextType.displayMedium: 0,
            PaTextType.displaySmall: 0,

            PaTextType.headlineLarge: -0.2,
            PaTextType.headlineMedium: -0.15,
            PaTextType.headlineSmall: 0,

            PaTextType.titleLarge: 0,
            PaTextType.titleMedium: 0.1,
            PaTextType.titleSmall: 0.1,

            PaTextType.labelLarge: 0.1,
            PaTextType.labelMedium: 0.5,
            PaTextType.labelSmall: 0.5,

            PaTextType.bodyLarge: 0.5,
            PaTextType.bodyMedium: 0.25,
            PaTextType.bodySmall: 0.4,
            //
            // Deprecated
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
                  Color themeColor =
                      PAAppTheme.getThemeFromThemeMode().colorScheme.onBackground;
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
                fontSize: fontSize ?? _defaultTextSize[PaTextType.displayLarge],
                color: color,
                height: height,
                muted: muted,
                letterSpacing: letterSpacing ??
                    _defaultLetterSpacing[PaTextType.displayLarge] ??
                    -0.2,
                fontWeight: _defaultTextFontWeight[PaTextType.displayLarge] ?? 500,
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
                fontSize: fontSize ?? _defaultTextSize[PaTextType.displayMedium],
                color: color,
                height: height,
                muted: muted,
                letterSpacing: letterSpacing ??
                    _defaultLetterSpacing[PaTextType.displayMedium] ??
                    -0.2,
                fontWeight: _defaultTextFontWeight[PaTextType.displayMedium] ?? 500,
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
                fontSize: fontSize ?? _defaultTextSize[PaTextType.displaySmall],
                color: color,
                height: height,
                muted: muted,
                letterSpacing: letterSpacing ??
                    _defaultLetterSpacing[PaTextType.displaySmall] ??
                    -0.2,
                fontWeight: _defaultTextFontWeight[PaTextType.displaySmall] ?? 500,
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
                fontSize: fontSize ?? _defaultTextSize[PaTextType.headlineLarge],
                color: color,
                height: height,
                muted: muted,
                letterSpacing: letterSpacing ??
                    _defaultLetterSpacing[PaTextType.headlineLarge] ??
                    -0.2,
                fontWeight: _defaultTextFontWeight[PaTextType.headlineLarge] ?? 500,
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
                fontSize: fontSize ?? _defaultTextSize[PaTextType.headlineMedium],
                color: color,
                height: height,
                muted: muted,
                letterSpacing: letterSpacing ??
                    _defaultLetterSpacing[PaTextType.headlineMedium] ??
                    -0.15,
                fontWeight: _defaultTextFontWeight[PaTextType.headlineMedium] ?? 500,
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
                fontSize: fontSize ?? _defaultTextSize[PaTextType.headlineSmall],
                color: color,
                height: height,
                muted: muted,
                letterSpacing: letterSpacing ??
                    _defaultLetterSpacing[PaTextType.headlineSmall] ??
                    -0.15,
                fontWeight: _defaultTextFontWeight[PaTextType.headlineSmall] ?? 500,
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
                fontSize: fontSize ?? _defaultTextSize[PaTextType.titleLarge],
                color: color,
                height: height,
                muted: muted,
                letterSpacing: letterSpacing ??
                    _defaultLetterSpacing[PaTextType.titleLarge] ??
                    -0.15,
                fontWeight: _defaultTextFontWeight[PaTextType.titleLarge] ?? 500,
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
                fontSize: fontSize ?? _defaultTextSize[PaTextType.titleMedium],
                color: color,
                height: height,
                muted: muted,
                letterSpacing: letterSpacing ??
                    _defaultLetterSpacing[PaTextType.titleMedium] ??
                    -0.15,
                fontWeight: _defaultTextFontWeight[PaTextType.titleMedium] ?? 500,
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
                fontSize: fontSize ?? _defaultTextSize[PaTextType.titleSmall],
                color: color,
                height: height,
                muted: muted,
                letterSpacing: letterSpacing ??
                    _defaultLetterSpacing[PaTextType.titleSmall] ??
                    -0.15,
                fontWeight: _defaultTextFontWeight[PaTextType.titleSmall] ?? 500,
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
                fontSize: fontSize ?? _defaultTextSize[PaTextType.labelLarge],
                color: color,
                height: height,
                muted: muted,
                letterSpacing: letterSpacing ??
                    _defaultLetterSpacing[PaTextType.labelLarge] ??
                    -0.15,
                fontWeight: _defaultTextFontWeight[PaTextType.labelLarge] ?? 500,
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
                fontSize: fontSize ?? _defaultTextSize[PaTextType.labelMedium],
                color: color,
                height: height,
                muted: muted,
                letterSpacing: letterSpacing ??
                    _defaultLetterSpacing[PaTextType.labelMedium] ??
                    -0.15,
                fontWeight: _defaultTextFontWeight[PaTextType.labelMedium] ?? 500,
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
                fontSize: fontSize ?? _defaultTextSize[PaTextType.labelSmall],
                color: color,
                height: height,
                muted: muted,
                letterSpacing: letterSpacing ??
                    _defaultLetterSpacing[PaTextType.labelSmall] ??
                    -0.15,
                fontWeight: _defaultTextFontWeight[PaTextType.labelSmall] ?? 500,
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
                fontSize: fontSize ?? _defaultTextSize[PaTextType.bodyLarge],
                color: color,
                height: height,
                muted: muted,
                letterSpacing: letterSpacing ??
                    _defaultLetterSpacing[PaTextType.bodyLarge] ??
                    0.15,
                fontWeight: fontWeight ?? _defaultTextFontWeight[PaTextType.bodyLarge] ?? 500,
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
                fontSize: fontSize ?? _defaultTextSize[PaTextType.bodyMedium],
                color: color,
                height: height,
                muted: muted,
                letterSpacing: letterSpacing ??
                    _defaultLetterSpacing[PaTextType.bodyMedium] ??
                    0.15,
                fontWeight: _defaultTextFontWeight[PaTextType.bodyMedium] ?? 500,
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
                fontSize: fontSize ?? _defaultTextSize[PaTextType.bodySmall],
                color: color,
                height: height,
                muted: muted,
                letterSpacing: letterSpacing ??
                    _defaultLetterSpacing[PaTextType.bodySmall] ??
                    0.15,
                fontWeight: _defaultTextFontWeight[PaTextType.bodySmall] ?? 500,
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

                  PaTextType.displayLarge: 57,
                  PaTextType.displayMedium: 45,
                  PaTextType.displaySmall: 36,

                  PaTextType.headlineLarge: 32,
                  PaTextType.headlineMedium: 28,
                  PaTextType.headlineSmall: 26,

                  PaTextType.titleLarge: 22,
                  PaTextType.titleMedium: 16,
                  PaTextType.titleSmall: 14,

                  PaTextType.labelLarge: 14,
                  PaTextType.labelMedium: 12,
                  PaTextType.labelSmall: 11,

                  PaTextType.bodyLarge: 16,
                  PaTextType.bodyMedium: 14,
                  PaTextType.bodySmall: 12,

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

                  PaTextType.displayLarge: 500,
                  PaTextType.displayMedium: 500,
                  PaTextType.displaySmall: 500,

                  PaTextType.headlineLarge: 500,
                  PaTextType.headlineMedium: 500,
                  PaTextType.headlineSmall: 500,

                  PaTextType.titleLarge: 500,
                  PaTextType.titleMedium: 500,
                  PaTextType.titleSmall: 500,

                  PaTextType.labelLarge: 600,
                  PaTextType.labelMedium: 600,
                  PaTextType.labelSmall: 600,

                  PaTextType.bodyLarge: 500,
                  PaTextType.bodyMedium: 500,
                  PaTextType.bodySmall: 500,


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

                  PaTextType.displayLarge: -0.25,
                  PaTextType.displayMedium: 0,
                  PaTextType.displaySmall: 0,

                  PaTextType.headlineLarge: -0.2,
                  PaTextType.headlineMedium: -0.15,
                  PaTextType.headlineSmall: 0,

                  PaTextType.titleLarge: 0,
                  PaTextType.titleMedium: 0.1,
                  PaTextType.titleSmall: 0.1,

                  PaTextType.labelLarge: 0.1,
                  PaTextType.labelMedium: 0.5,
                  PaTextType.labelSmall: 0.5,

                  PaTextType.bodyLarge: 0.5,
                  PaTextType.bodyMedium: 0.25,
                  PaTextType.bodySmall: 0.4,

                  //@deprecated
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