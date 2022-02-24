// Copyright 2021 The FlutX Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

/// [PaShadow] - provides custom shadow to the widget

import 'package:flutter/material.dart';

enum PaShadowPosition {
  topLeft,
  top,
  topRight,
  centerLeft,
  center,
  centerRight,
  bottomLeft,
  bottom,
  bottomRight
}

class PaShadow {
  late int alpha;
  late double elevation, spreadRadius, blurRadius;
  Offset? offset;
  PaShadowPosition? position;
  Color? color;
  bool? darkShadow;

  PaShadow(
      {double elevation = 8, double? spreadRadius, double? blurRadius, Offset? offset, PaShadowPosition position = PaShadowPosition
          .bottom, int? alpha, Color? color, bool darkShadow = false}) {
    this.spreadRadius = spreadRadius ?? elevation * 0.125;
    this.blurRadius = blurRadius ?? elevation * 2;
    this.alpha = alpha != null ? alpha : (darkShadow ? 100 : 36);
    this.elevation = elevation;
    this.offset = offset;
    this.position = position;
    this.color = color;
    this.darkShadow = darkShadow;

    if (offset == null) {
      switch (position) {
        case PaShadowPosition.topLeft:
          this.offset = Offset(-elevation, -elevation);
          break;
        case PaShadowPosition.top:
          this.offset = Offset(0, -elevation);
          break;
        case PaShadowPosition.topRight:
          this.offset = Offset(elevation, -elevation);
          break;
      //TODO: Shadow problem
        case PaShadowPosition.centerLeft:
          this.offset = Offset(-elevation, elevation * 0.25);
          break;
        case PaShadowPosition.center:
          this.offset = Offset(0, 0);
          break;
      //TODO: Shadow problem
        case PaShadowPosition.centerRight:
          this.offset = Offset(elevation, elevation * 0.25);
          break;
        case PaShadowPosition.bottomLeft:
          this.offset = Offset(-elevation, elevation);
          break;
        case PaShadowPosition.bottom:
          this.offset = Offset(0, elevation);
          break;
        case PaShadowPosition.bottomRight:
          this.offset = Offset(elevation, elevation);
          break;
      }
    }
  }

  PaShadow.none(
      {double elevation = 0, double? spreadRadius, double? blurRadius, Offset? offset, PaShadowPosition position = PaShadowPosition
          .bottom, int? alpha, Color? color, bool darkShadow = false}){
    this.spreadRadius = spreadRadius ?? elevation * 0.125;
    this.blurRadius = blurRadius ?? elevation * 2;
    this.alpha = alpha != null ? alpha : (darkShadow ? 100 : 36);
    this.elevation = elevation;
    this.offset = offset;
    this.position = position;
    this.color = color;
    this.darkShadow = darkShadow;

    if (offset == null) {
      switch (position) {
        case PaShadowPosition.topLeft:
          this.offset = Offset(-elevation, -elevation);
          break;
        case PaShadowPosition.top:
          this.offset = Offset(0, -elevation);
          break;
        case PaShadowPosition.topRight:
          this.offset = Offset(elevation, -elevation);
          break;
      //TODO: Shadow problem
        case PaShadowPosition.centerLeft:
          this.offset = Offset(-elevation, elevation * 0.25);
          break;
        case PaShadowPosition.center:
          this.offset = Offset(0, 0);
          break;
      //TODO: Shadow problem
        case PaShadowPosition.centerRight:
          this.offset = Offset(elevation, elevation * 0.25);
          break;
        case PaShadowPosition.bottomLeft:
          this.offset = Offset(-elevation, elevation);
          break;
        case PaShadowPosition.bottom:
          this.offset = Offset(0, elevation);
          break;
        case PaShadowPosition.bottomRight:
          this.offset = Offset(elevation, elevation);
          break;
      }
    }
  }

  @override
  String toString() {
    return 'PaShadow{alpha: $alpha, elevation: $elevation, spreadRadius: $spreadRadius, blurRadius: $blurRadius, offset: $offset, position: $position, color: $color, darkShadow: $darkShadow}';
  }


}