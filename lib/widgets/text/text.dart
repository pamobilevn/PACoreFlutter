

// Copyright 2021 The FlutX Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

/// There are mainly 13 types of Text widgets.
/// h1,h2,h3,h4,h5,h6,sh1,sh2,b1,b2,button,caption,overline - This is the order of its size.
import 'package:flutter/material.dart';
// import 'package:flutx/flutx.dart';
// import 'package:flutx/themes/text_style.dart';

import 'text_style.dart';

class PAText extends StatelessWidget {
  //Key

  final Key? key;

  final String text;
  final TextStyle? style;
  final int? fontWeight;
  final bool muted, xMuted;
  final double? letterSpacing;
  final Color? color;
  final TextDecoration decoration;
  final double? height;
  final double wordSpacing;
  final double? fontSize;
  final PATextType textType;

  //Text Style
  final TextAlign? textAlign;
  final int? maxLines;
  final Locale? locale;
  final TextOverflow? overflow;
  final String? semanticsLabel;
  final bool? softWrap;
  final StrutStyle? strutStyle;
  final TextDirection? textDirection;
  final TextHeightBehavior? textHeightBehavior;
  final double? textScaleFactor;
  final TextWidthBasis? textWidthBasis;

  PAText(this.text,
      {this.style,
        this.fontWeight = 500,
        this.muted = false,
        this.xMuted = false,
        this.letterSpacing = 0.15,
        this.color,
        this.decoration = TextDecoration.none,
        this.height,
        this.wordSpacing = 0,
        this.fontSize,
        this.textType = PATextType.b1,
        this.key,
        this.textAlign,
        this.maxLines,
        this.locale,
        this.overflow,
        this.semanticsLabel,
        this.softWrap,
        this.strutStyle,
        this.textDirection,
        this.textHeightBehavior,
        this.textScaleFactor,
        this.textWidthBasis});

  @Deprecated('message')
  PAText.h4(this.text,
      {this.style,
        this.fontWeight = 500,
        this.muted = false,
        this.xMuted = false,
        this.letterSpacing,
        this.color,
        this.decoration = TextDecoration.none,
        this.height,
        this.wordSpacing = 0,
        this.fontSize,
        this.textType = PATextType.h4,
        this.key,
        this.textAlign,
        this.maxLines,
        this.locale,
        this.overflow,
        this.semanticsLabel,
        this.softWrap,
        this.strutStyle,
        this.textDirection,
        this.textHeightBehavior,
        this.textScaleFactor,
        this.textWidthBasis});

  @Deprecated('message')
  PAText.h5(this.text,
      {this.style,
        this.fontWeight = 500,
        this.muted = false,
        this.xMuted = false,
        this.letterSpacing,
        this.color,
        this.decoration = TextDecoration.none,
        this.height,
        this.wordSpacing = 0,
        this.fontSize,
        this.textType = PATextType.h5,
        this.key,
        this.textAlign,
        this.maxLines,
        this.locale,
        this.overflow,
        this.semanticsLabel,
        this.softWrap,
        this.strutStyle,
        this.textDirection,
        this.textHeightBehavior,
        this.textScaleFactor,
        this.textWidthBasis});

  @Deprecated('message')
  PAText.h6(this.text,
      {this.style,
        this.fontWeight = 500,
        this.muted = false,
        this.xMuted = false,
        this.letterSpacing,
        this.color,
        this.decoration = TextDecoration.none,
        this.height,
        this.wordSpacing = 0,
        this.fontSize,
        this.textType = PATextType.h6,
        this.key,
        this.textAlign,
        this.maxLines,
        this.locale,
        this.overflow,
        this.semanticsLabel,
        this.softWrap,
        this.strutStyle,
        this.textDirection,
        this.textHeightBehavior,
        this.textScaleFactor,
        this.textWidthBasis});

  @Deprecated('message')
  PAText.sh1(this.text,
      {this.style,
        this.fontWeight = 500,
        this.muted = false,
        this.xMuted = false,
        this.letterSpacing,
        this.color,
        this.decoration = TextDecoration.none,
        this.height,
        this.wordSpacing = 0,
        this.fontSize,
        this.textType = PATextType.sh1,
        this.key,
        this.textAlign,
        this.maxLines,
        this.locale,
        this.overflow,
        this.semanticsLabel,
        this.softWrap,
        this.strutStyle,
        this.textDirection,
        this.textHeightBehavior,
        this.textScaleFactor,
        this.textWidthBasis});

  @Deprecated('message')
  PAText.sh2(this.text,
      {this.style,
        this.fontWeight = 500,
        this.muted = false,
        this.xMuted = false,
        this.letterSpacing,
        this.color,
        this.decoration = TextDecoration.none,
        this.height,
        this.wordSpacing = 0,
        this.fontSize,
        this.textType = PATextType.sh2,
        this.key,
        this.textAlign,
        this.maxLines,
        this.locale,
        this.overflow,
        this.semanticsLabel,
        this.softWrap,
        this.strutStyle,
        this.textDirection,
        this.textHeightBehavior,
        this.textScaleFactor,
        this.textWidthBasis});

  @Deprecated('message')
  PAText.button(this.text,
      {this.style,
        this.fontWeight = 500,
        this.muted = false,
        this.xMuted = false,
        this.letterSpacing,
        this.color,
        this.decoration = TextDecoration.none,
        this.height,
        this.wordSpacing = 0,
        this.fontSize,
        this.textType = PATextType.button,
        this.key,
        this.textAlign,
        this.maxLines,
        this.locale,
        this.overflow,
        this.semanticsLabel,
        this.softWrap,
        this.strutStyle,
        this.textDirection,
        this.textHeightBehavior,
        this.textScaleFactor,
        this.textWidthBasis});

  @Deprecated('message')
  PAText.caption(this.text,
      {this.style,
        this.fontWeight = 500,
        this.muted = false,
        this.xMuted = false,
        this.letterSpacing,
        this.color,
        this.decoration = TextDecoration.none,
        this.height,
        this.wordSpacing = 0,
        this.fontSize,
        this.textType = PATextType.caption,
        this.key,
        this.textAlign,
        this.maxLines,
        this.locale,
        this.overflow,
        this.semanticsLabel,
        this.softWrap,
        this.strutStyle,
        this.textDirection,
        this.textHeightBehavior,
        this.textScaleFactor,
        this.textWidthBasis});

  @Deprecated('message')
  PAText.overline(this.text,
      {this.style,
        this.fontWeight = 500,
        this.muted = false,
        this.xMuted = false,
        this.letterSpacing,
        this.color,
        this.decoration = TextDecoration.none,
        this.height,
        this.wordSpacing = 0,
        this.fontSize,
        this.textType = PATextType.overline,
        this.key,
        this.textAlign,
        this.maxLines,
        this.locale,
        this.overflow,
        this.semanticsLabel,
        this.softWrap,
        this.strutStyle,
        this.textDirection,
        this.textHeightBehavior,
        this.textScaleFactor,
        this.textWidthBasis});

  // Material Design 3

  @Deprecated('message')
  PAText.d1(this.text,
      {this.style,
        this.fontWeight,
        this.muted = false,
        this.xMuted = false,
        this.letterSpacing,
        this.color,
        this.decoration = TextDecoration.none,
        this.height,
        this.wordSpacing = 0,
        this.fontSize,
        this.textType = PATextType.d1,
        this.key,
        this.textAlign,
        this.maxLines,
        this.locale,
        this.overflow,
        this.semanticsLabel,
        this.softWrap,
        this.strutStyle,
        this.textDirection,
        this.textHeightBehavior,
        this.textScaleFactor,
        this.textWidthBasis});

  @Deprecated('message')
  PAText.d2(this.text,
      {this.style,
        this.fontWeight,
        this.muted = false,
        this.xMuted = false,
        this.letterSpacing,
        this.color,
        this.decoration = TextDecoration.none,
        this.height,
        this.wordSpacing = 0,
        this.fontSize,
        this.textType = PATextType.d2,
        this.key,
        this.textAlign,
        this.maxLines,
        this.locale,
        this.overflow,
        this.semanticsLabel,
        this.softWrap,
        this.strutStyle,
        this.textDirection,
        this.textHeightBehavior,
        this.textScaleFactor,
        this.textWidthBasis});

  @Deprecated('message')
  PAText.d3(this.text,
      {this.style,
        this.fontWeight,
        this.muted = false,
        this.xMuted = false,
        this.letterSpacing,
        this.color,
        this.decoration = TextDecoration.none,
        this.height,
        this.wordSpacing = 0,
        this.fontSize,
        this.textType = PATextType.d3,
        this.key,
        this.textAlign,
        this.maxLines,
        this.locale,
        this.overflow,
        this.semanticsLabel,
        this.softWrap,
        this.strutStyle,
        this.textDirection,
        this.textHeightBehavior,
        this.textScaleFactor,
        this.textWidthBasis});

  @Deprecated('message')
  PAText.h1(this.text,
      {this.style,
        this.fontWeight = 500,
        this.muted = false,
        this.xMuted = false,
        this.letterSpacing,
        this.color,
        this.decoration = TextDecoration.none,
        this.height,
        this.wordSpacing = 0,
        this.fontSize,
        this.textType = PATextType.h1,
        this.key,
        this.textAlign,
        this.maxLines,
        this.locale,
        this.overflow,
        this.semanticsLabel,
        this.softWrap,
        this.strutStyle,
        this.textDirection,
        this.textHeightBehavior,
        this.textScaleFactor,
        this.textWidthBasis});

  @Deprecated('message')
  PAText.h2(this.text,
      {this.style,
        this.fontWeight = 500,
        this.muted = false,
        this.xMuted = false,
        this.letterSpacing,
        this.color,
        this.decoration = TextDecoration.none,
        this.height,
        this.wordSpacing = 0,
        this.fontSize,
        this.textType = PATextType.h2,
        this.key,
        this.textAlign,
        this.maxLines,
        this.locale,
        this.overflow,
        this.semanticsLabel,
        this.softWrap,
        this.strutStyle,
        this.textDirection,
        this.textHeightBehavior,
        this.textScaleFactor,
        this.textWidthBasis});

  @Deprecated('message')
  PAText.h3(this.text,
      {this.style,
        this.fontWeight = 500,
        this.muted = false,
        this.xMuted = false,
        this.letterSpacing,
        this.color,
        this.decoration = TextDecoration.none,
        this.height,
        this.wordSpacing = 0,
        this.fontSize,
        this.textType = PATextType.h3,
        this.key,
        this.textAlign,
        this.maxLines,
        this.locale,
        this.overflow,
        this.semanticsLabel,
        this.softWrap,
        this.strutStyle,
        this.textDirection,
        this.textHeightBehavior,
        this.textScaleFactor,
        this.textWidthBasis});

  @Deprecated('message')
  PAText.t1(this.text,
      {this.style,
        this.fontWeight,
        this.muted = false,
        this.xMuted = false,
        this.letterSpacing,
        this.color,
        this.decoration = TextDecoration.none,
        this.height,
        this.wordSpacing = 0,
        this.fontSize,
        this.textType = PATextType.t1,
        this.key,
        this.textAlign,
        this.maxLines,
        this.locale,
        this.overflow,
        this.semanticsLabel,
        this.softWrap,
        this.strutStyle,
        this.textDirection,
        this.textHeightBehavior,
        this.textScaleFactor,
        this.textWidthBasis});

  @Deprecated('message')
  PAText.t2(this.text,
      {this.style,
        this.fontWeight,
        this.muted = false,
        this.xMuted = false,
        this.letterSpacing,
        this.color,
        this.decoration = TextDecoration.none,
        this.height,
        this.wordSpacing = 0,
        this.fontSize,
        this.textType = PATextType.t2,
        this.key,
        this.textAlign,
        this.maxLines,
        this.locale,
        this.overflow,
        this.semanticsLabel,
        this.softWrap,
        this.strutStyle,
        this.textDirection,
        this.textHeightBehavior,
        this.textScaleFactor,
        this.textWidthBasis});

  @Deprecated('message')
  PAText.t3(this.text,
      {this.style,
        this.fontWeight,
        this.muted = false,
        this.xMuted = false,
        this.letterSpacing,
        this.color,
        this.decoration = TextDecoration.none,
        this.height,
        this.wordSpacing = 0,
        this.fontSize,
        this.textType = PATextType.t3,
        this.key,
        this.textAlign,
        this.maxLines,
        this.locale,
        this.overflow,
        this.semanticsLabel,
        this.softWrap,
        this.strutStyle,
        this.textDirection,
        this.textHeightBehavior,
        this.textScaleFactor,
        this.textWidthBasis});

  @Deprecated('message')
  PAText.l1(this.text,
      {this.style,
        this.fontWeight,
        this.muted = false,
        this.xMuted = false,
        this.letterSpacing,
        this.color,
        this.decoration = TextDecoration.none,
        this.height,
        this.wordSpacing = 0,
        this.fontSize,
        this.textType = PATextType.l1,
        this.key,
        this.textAlign,
        this.maxLines,
        this.locale,
        this.overflow,
        this.semanticsLabel,
        this.softWrap,
        this.strutStyle,
        this.textDirection,
        this.textHeightBehavior,
        this.textScaleFactor,
        this.textWidthBasis});

  @Deprecated('message')
  PAText.l2(this.text,
      {this.style,
        this.fontWeight,
        this.muted = false,
        this.xMuted = false,
        this.letterSpacing,
        this.color,
        this.decoration = TextDecoration.none,
        this.height,
        this.wordSpacing = 0,
        this.fontSize,
        this.textType = PATextType.l2,
        this.key,
        this.textAlign,
        this.maxLines,
        this.locale,
        this.overflow,
        this.semanticsLabel,
        this.softWrap,
        this.strutStyle,
        this.textDirection,
        this.textHeightBehavior,
        this.textScaleFactor,
        this.textWidthBasis});

  @Deprecated('message')
  PAText.l3(this.text,
      {this.style,
        this.fontWeight,
        this.muted = false,
        this.xMuted = false,
        this.letterSpacing,
        this.color,
        this.decoration = TextDecoration.none,
        this.height,
        this.wordSpacing = 0,
        this.fontSize,
        this.textType = PATextType.l3,
        this.key,
        this.textAlign,
        this.maxLines,
        this.locale,
        this.overflow,
        this.semanticsLabel,
        this.softWrap,
        this.strutStyle,
        this.textDirection,
        this.textHeightBehavior,
        this.textScaleFactor,
        this.textWidthBasis});

  @Deprecated('message')
  PAText.b1(this.text,
      {this.style,
        this.fontWeight,
        this.muted = false,
        this.xMuted = false,
        this.letterSpacing,
        this.color,
        this.decoration = TextDecoration.none,
        this.height,
        this.wordSpacing = 0,
        this.fontSize,
        this.textType = PATextType.b1,
        this.key,
        this.textAlign,
        this.maxLines,
        this.locale,
        this.overflow,
        this.semanticsLabel,
        this.softWrap,
        this.strutStyle,
        this.textDirection,
        this.textHeightBehavior,
        this.textScaleFactor,
        this.textWidthBasis});

  @Deprecated('message')
  PAText.b2(this.text,
      {this.style,
        this.fontWeight,
        this.muted = false,
        this.xMuted = false,
        this.letterSpacing,
        this.color,
        this.decoration = TextDecoration.none,
        this.height,
        this.wordSpacing = 0,
        this.fontSize,
        this.textType = PATextType.b2,
        this.key,
        this.textAlign,
        this.maxLines,
        this.locale,
        this.overflow,
        this.semanticsLabel,
        this.softWrap,
        this.strutStyle,
        this.textDirection,
        this.textHeightBehavior,
        this.textScaleFactor,
        this.textWidthBasis});

  @Deprecated('message')
  PAText.b3(this.text,
      {this.style,
        this.fontWeight,
        this.muted = false,
        this.xMuted = false,
        this.letterSpacing,
        this.color,
        this.decoration = TextDecoration.none,
        this.height,
        this.wordSpacing = 0,
        this.fontSize,
        this.textType = PATextType.b3,
        this.key,
        this.textAlign,
        this.maxLines,
        this.locale,
        this.overflow,
        this.semanticsLabel,
        this.softWrap,
        this.strutStyle,
        this.textDirection,
        this.textHeightBehavior,
        this.textScaleFactor,
        this.textWidthBasis});

// New Implementation
  PAText.displayLarge(this.text,
      {this.style,
        this.fontWeight,
        this.muted = false,
        this.xMuted = false,
        this.letterSpacing,
        this.color,
        this.decoration = TextDecoration.none,
        this.height,
        this.wordSpacing = 0,
        this.fontSize,
        this.textType = PATextType.displayLarge,
        this.key,
        this.textAlign,
        this.maxLines,
        this.locale,
        this.overflow,
        this.semanticsLabel,
        this.softWrap,
        this.strutStyle,
        this.textDirection,
        this.textHeightBehavior,
        this.textScaleFactor,
        this.textWidthBasis});

  PAText.displayMedium(this.text,
      {this.style,
        this.fontWeight,
        this.muted = false,
        this.xMuted = false,
        this.letterSpacing,
        this.color,
        this.decoration = TextDecoration.none,
        this.height,
        this.wordSpacing = 0,
        this.fontSize,
        this.textType = PATextType.displayMedium,
        this.key,
        this.textAlign,
        this.maxLines,
        this.locale,
        this.overflow,
        this.semanticsLabel,
        this.softWrap,
        this.strutStyle,
        this.textDirection,
        this.textHeightBehavior,
        this.textScaleFactor,
        this.textWidthBasis});

  PAText.displaySmall(this.text,
      {this.style,
        this.fontWeight,
        this.muted = false,
        this.xMuted = false,
        this.letterSpacing,
        this.color,
        this.decoration = TextDecoration.none,
        this.height,
        this.wordSpacing = 0,
        this.fontSize,
        this.textType = PATextType.displaySmall,
        this.key,
        this.textAlign,
        this.maxLines,
        this.locale,
        this.overflow,
        this.semanticsLabel,
        this.softWrap,
        this.strutStyle,
        this.textDirection,
        this.textHeightBehavior,
        this.textScaleFactor,
        this.textWidthBasis});

  PAText.headlineLarge(this.text,
      {this.style,
        this.fontWeight = 500,
        this.muted = false,
        this.xMuted = false,
        this.letterSpacing,
        this.color,
        this.decoration = TextDecoration.none,
        this.height,
        this.wordSpacing = 0,
        this.fontSize,
        this.textType = PATextType.headlineLarge,
        this.key,
        this.textAlign,
        this.maxLines,
        this.locale,
        this.overflow,
        this.semanticsLabel,
        this.softWrap,
        this.strutStyle,
        this.textDirection,
        this.textHeightBehavior,
        this.textScaleFactor,
        this.textWidthBasis});

  PAText.headlineMedium(this.text,
      {this.style,
        this.fontWeight = 500,
        this.muted = false,
        this.xMuted = false,
        this.letterSpacing,
        this.color,
        this.decoration = TextDecoration.none,
        this.height,
        this.wordSpacing = 0,
        this.fontSize,
        this.textType = PATextType.headlineMedium,
        this.key,
        this.textAlign,
        this.maxLines,
        this.locale,
        this.overflow,
        this.semanticsLabel,
        this.softWrap,
        this.strutStyle,
        this.textDirection,
        this.textHeightBehavior,
        this.textScaleFactor,
        this.textWidthBasis});

  PAText.headlineSmall(this.text,
      {this.style,
        this.fontWeight = 500,
        this.muted = false,
        this.xMuted = false,
        this.letterSpacing,
        this.color,
        this.decoration = TextDecoration.none,
        this.height,
        this.wordSpacing = 0,
        this.fontSize,
        this.textType = PATextType.headlineSmall,
        this.key,
        this.textAlign,
        this.maxLines,
        this.locale,
        this.overflow,
        this.semanticsLabel,
        this.softWrap,
        this.strutStyle,
        this.textDirection,
        this.textHeightBehavior,
        this.textScaleFactor,
        this.textWidthBasis});

  PAText.titleLarge(this.text,
      {this.style,
        this.fontWeight,
        this.muted = false,
        this.xMuted = false,
        this.letterSpacing,
        this.color,
        this.decoration = TextDecoration.none,
        this.height,
        this.wordSpacing = 0,
        this.fontSize,
        this.textType = PATextType.titleLarge,
        this.key,
        this.textAlign,
        this.maxLines,
        this.locale,
        this.overflow,
        this.semanticsLabel,
        this.softWrap,
        this.strutStyle,
        this.textDirection,
        this.textHeightBehavior,
        this.textScaleFactor,
        this.textWidthBasis});

  PAText.titleMedium(this.text,
      {this.style,
        this.fontWeight,
        this.muted = false,
        this.xMuted = false,
        this.letterSpacing,
        this.color,
        this.decoration = TextDecoration.none,
        this.height,
        this.wordSpacing = 0,
        this.fontSize,
        this.textType = PATextType.titleMedium,
        this.key,
        this.textAlign,
        this.maxLines,
        this.locale,
        this.overflow,
        this.semanticsLabel,
        this.softWrap,
        this.strutStyle,
        this.textDirection,
        this.textHeightBehavior,
        this.textScaleFactor,
        this.textWidthBasis});

  PAText.titleSmall(this.text,
      {this.style,
        this.fontWeight,
        this.muted = false,
        this.xMuted = false,
        this.letterSpacing,
        this.color,
        this.decoration = TextDecoration.none,
        this.height,
        this.wordSpacing = 0,
        this.fontSize,
        this.textType = PATextType.titleSmall,
        this.key,
        this.textAlign,
        this.maxLines,
        this.locale,
        this.overflow,
        this.semanticsLabel,
        this.softWrap,
        this.strutStyle,
        this.textDirection,
        this.textHeightBehavior,
        this.textScaleFactor,
        this.textWidthBasis});

  PAText.labelLarge(this.text,
      {this.style,
        this.fontWeight,
        this.muted = false,
        this.xMuted = false,
        this.letterSpacing,
        this.color,
        this.decoration = TextDecoration.none,
        this.height,
        this.wordSpacing = 0,
        this.fontSize,
        this.textType = PATextType.labelLarge,
        this.key,
        this.textAlign,
        this.maxLines,
        this.locale,
        this.overflow,
        this.semanticsLabel,
        this.softWrap,
        this.strutStyle,
        this.textDirection,
        this.textHeightBehavior,
        this.textScaleFactor,
        this.textWidthBasis});

  PAText.labelMedium(this.text,
      {this.style,
        this.fontWeight,
        this.muted = false,
        this.xMuted = false,
        this.letterSpacing,
        this.color,
        this.decoration = TextDecoration.none,
        this.height,
        this.wordSpacing = 0,
        this.fontSize,
        this.textType = PATextType.labelMedium,
        this.key,
        this.textAlign,
        this.maxLines,
        this.locale,
        this.overflow,
        this.semanticsLabel,
        this.softWrap,
        this.strutStyle,
        this.textDirection,
        this.textHeightBehavior,
        this.textScaleFactor,
        this.textWidthBasis});

  PAText.labelSmall(this.text,
      {this.style,
        this.fontWeight,
        this.muted = false,
        this.xMuted = false,
        this.letterSpacing,
        this.color,
        this.decoration = TextDecoration.none,
        this.height,
        this.wordSpacing = 0,
        this.fontSize,
        this.textType = PATextType.labelSmall,
        this.key,
        this.textAlign,
        this.maxLines,
        this.locale,
        this.overflow,
        this.semanticsLabel,
        this.softWrap,
        this.strutStyle,
        this.textDirection,
        this.textHeightBehavior,
        this.textScaleFactor,
        this.textWidthBasis});

  PAText.bodyLarge(this.text,
      {this.style,
        this.fontWeight,
        this.muted = false,
        this.xMuted = false,
        this.letterSpacing,
        this.color,
        this.decoration = TextDecoration.none,
        this.height,
        this.wordSpacing = 0,
        this.fontSize,
        this.textType = PATextType.bodyLarge,
        this.key,
        this.textAlign,
        this.maxLines,
        this.locale,
        this.overflow,
        this.semanticsLabel,
        this.softWrap,
        this.strutStyle,
        this.textDirection,
        this.textHeightBehavior,
        this.textScaleFactor,
        this.textWidthBasis});

  PAText.bodyMedium(this.text,
      {this.style,
        this.fontWeight,
        this.muted = false,
        this.xMuted = false,
        this.letterSpacing,
        this.color,
        this.decoration = TextDecoration.none,
        this.height,
        this.wordSpacing = 0,
        this.fontSize,
        this.textType = PATextType.bodyMedium,
        this.key,
        this.textAlign,
        this.maxLines,
        this.locale,
        this.overflow,
        this.semanticsLabel,
        this.softWrap,
        this.strutStyle,
        this.textDirection,
        this.textHeightBehavior,
        this.textScaleFactor,
        this.textWidthBasis});

  PAText.bodySmall(this.text,
      {this.style,
        this.fontWeight,
        this.muted = false,
        this.xMuted = false,
        this.letterSpacing,
        this.color,
        this.decoration = TextDecoration.none,
        this.height,
        this.wordSpacing = 0,
        this.fontSize,
        this.textType = PATextType.bodySmall,
        this.key,
        this.textAlign,
        this.maxLines,
        this.locale,
        this.overflow,
        this.semanticsLabel,
        this.softWrap,
        this.strutStyle,
        this.textDirection,
        this.textHeightBehavior,
        this.textScaleFactor,
        this.textWidthBasis});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style ??
          PATextStyle.getStyle(
            textStyle: style,
            color: color,
            fontWeight: fontWeight ??
                PATextStyle.defaultTextFontWeight[textType] ??
                500,
            muted: muted,
            letterSpacing: letterSpacing ??
                PATextStyle.defaultLetterSpacing[textType] ??
                0.15,
            height: height,
            xMuted: xMuted,
            decoration: decoration,
            wordSpacing: wordSpacing,
            fontSize: fontSize ?? PATextStyle.defaultTextSize[textType],
          ),
      textAlign: textAlign,
      maxLines: maxLines,
      locale: locale,
      overflow: overflow,
      semanticsLabel: semanticsLabel,
      softWrap: softWrap,
      strutStyle: strutStyle,
      textDirection: textDirection ?? TextDirection.ltr,
      textHeightBehavior: textHeightBehavior,
      textScaleFactor: textScaleFactor,
      textWidthBasis: textWidthBasis,
      key: key,
    );
  }
}
