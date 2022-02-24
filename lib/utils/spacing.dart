// Copyright 2021 The FlutX Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

/// [PaSpacing] - provides spacing of various types.

import 'package:flutter/material.dart';

class PaSpacing {

  static EdgeInsets zero = EdgeInsets.zero;
  static EdgeInsets only(
      {double top = 0, double right = 0, double bottom = 0, double left = 0}) {
    return EdgeInsets.only(left: left, right: right, top: top, bottom: bottom);
  }
  static EdgeInsets fromLTRB(
      double left, double top, double right, double bottom) {
    return PaSpacing.only(bottom: bottom, top: top, right: right, left: left);
  }
  static EdgeInsets all(double spacing) {
    return PaSpacing.only(
        bottom: spacing, top: spacing, right: spacing, left: spacing);
  }
  static EdgeInsets left(double spacing) {
    return PaSpacing.only(left: spacing);
  }
  static EdgeInsets nLeft(double spacing) {
    return PaSpacing.only(top: spacing, bottom: spacing, right: spacing);
  }
  static EdgeInsets top(double spacing) {
    return PaSpacing.only(top: spacing);
  }
  static EdgeInsets nTop(double spacing) {
    return PaSpacing.only(left: spacing, bottom: spacing, right: spacing);
  }
  static EdgeInsets right(double spacing) {
    return PaSpacing.only(right: spacing);
  }
  static EdgeInsets nRight(double spacing) {
    return PaSpacing.only(top: spacing, bottom: spacing, left: spacing);
  }
  static EdgeInsets bottom(double spacing) {
    return PaSpacing.only(bottom: spacing);
  }
  static EdgeInsets nBottom(double spacing) {
    return PaSpacing.only(top: spacing, left: spacing, right: spacing);
  }
  static EdgeInsets horizontal(double spacing) {
    return PaSpacing.only(left: spacing, right: spacing);
  }
  static EdgeInsets x(double spacing) {
    return PaSpacing.only(left: spacing, right: spacing);
  }
  static EdgeInsets xy(double xSpacing, double ySpacing) {
    return PaSpacing.only(
        left: xSpacing, right: xSpacing, top: ySpacing, bottom: ySpacing);
  }
  static EdgeInsets  y(double spacing) {
    return PaSpacing.only(top: spacing, bottom: spacing);
  }
  static EdgeInsets vertical(double spacing) {
    return PaSpacing.only(top: spacing, bottom: spacing);
  }
  static EdgeInsets symmetric(
      {double vertical = 0, double horizontal = 0}) {
    return PaSpacing.only(
        top: vertical, right: horizontal, left: horizontal, bottom: vertical);
  }
  static SizedBox height(double height) {
    return SizedBox(
      height: height,
    );
  }
  static SizedBox width(double width) {
    return SizedBox(
      width: width,
    );
  }

  static Widget empty(){
    return SizedBox(width: 0, height: 0);
  }

  static double safeAreaTop(BuildContext context){
    return MediaQuery.of(context).padding.top;
  }

}
