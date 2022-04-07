// Copyright 2021 The FlutX Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

/// There are mainly 2 types of container .
///
/// [PAContainer.bordered] - provides border to the container.
/// [PAContainer.rounded] - provides rounded shape to the container for the given height and width of the container.
import 'dart:ui';

import 'package:flutter/material.dart';

import '../../themes/themes.dart';
import '../../utils/spacing.dart';

class PAContainer extends StatelessWidget {
  final Widget? child;
  final BorderRadius? borderRadius;
  final double? borderRadiusAll, paddingAll, marginAll;
  final EdgeInsetsGeometry? padding, margin;
  final Color? color;
  final bool bordered;
  final Border? border;
  final Clip? clipBehavior;
  final BoxShape shape;
  final double? width, height;
  final AlignmentGeometry? alignment;
  final GestureTapCallback? onTap;
  final Color? splashColor;
  final bool enableBorderRadius;

  const PAContainer({Key? key,
    this.child,
    this.borderRadius,
    this.padding,
    this.borderRadiusAll,
    this.paddingAll,
    this.border,
    this.bordered = false,
    this.clipBehavior,
    this.color,
    this.shape = BoxShape.rectangle,
    this.width,
    this.height,
    this.alignment,
    this.enableBorderRadius = true,
    this.onTap, this.marginAll, this.margin, this.splashColor})
      : super(key: key);

  const PAContainer.transparent({Key? key,
    this.child,
    this.borderRadius,
    this.padding,
    this.borderRadiusAll,
    this.paddingAll,
    this.border,
    this.bordered = false,
    this.clipBehavior,
    this.color = Colors.transparent,
    this.shape = BoxShape.rectangle,
    this.width,
    this.height,
    this.alignment,
    this.enableBorderRadius = true,
    this.onTap, this.marginAll, this.margin, this.splashColor})
      : super(key: key);

  const PAContainer.none({Key? key,
    this.child,
    this.borderRadius,
    this.padding,
    this.borderRadiusAll = 0,
    this.paddingAll = 0,
    this.border,
    this.bordered = false,
    this.clipBehavior,this.enableBorderRadius = true,
    this.color,
    this.shape = BoxShape.rectangle,
    this.width,
    this.height,
    this.alignment,
    this.onTap, this.marginAll, this.margin, this.splashColor})
      : super(key: key);

  const PAContainer.bordered({Key? key,
    this.child,
    this.borderRadius,
    this.padding,
    this.borderRadiusAll,
    this.paddingAll,
    this.border,
    this.bordered = true,this.enableBorderRadius = true,
    this.clipBehavior,
    this.color,
    this.shape = BoxShape.rectangle,
    this.width,
    this.height,
    this.alignment,
    this.onTap, this.marginAll, this.margin, this.splashColor})
      : super(key: key);

  const PAContainer.roundBordered({Key? key,
    this.child,
    this.borderRadius,
    this.padding,
    this.borderRadiusAll,this.enableBorderRadius = true,
    this.paddingAll,
    this.border,
    this.bordered = true,
    this.clipBehavior,
    this.color,
    this.shape = BoxShape.circle,
    this.width,
    this.height,
    this.alignment,
    this.onTap, this.marginAll, this.margin, this.splashColor})
      : super(key: key);

  const PAContainer.rounded({Key? key,
    this.child,
    this.borderRadius,
    this.padding,
    this.borderRadiusAll,this.enableBorderRadius = true,
    this.paddingAll,
    this.border,
    this.bordered = false,
    this.clipBehavior = Clip.antiAliasWithSaveLayer,
    this.color,
    this.shape = BoxShape.circle,
    this.width,
    this.height,
    this.alignment,
    this.onTap, this.marginAll, this.margin, this.splashColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget base = Container(
      width: width,
      height: height,
      alignment: alignment,
      margin: margin ?? PASpacing.all(marginAll ?? 0),
      decoration: BoxDecoration(
          color: color ?? PAAppTheme.theme.cardTheme.color,
          shape: shape,
          borderRadius: enableBorderRadius ? ( shape == BoxShape.rectangle
              ? borderRadius ??
              BorderRadius.all(Radius.circular(borderRadiusAll ?? PAConstant.constant.containerRadius))
              : null) : null,
          border: bordered
              ? border ??
              Border.all(color: PAAppTheme.theme.dividerColor, width: 1)
              : null),
      padding: padding ?? PASpacing.all(paddingAll ?? 16),
      clipBehavior: clipBehavior ?? Clip.none,
      child: child,
    );

    if (onTap != null) {
      return InkWell(
        borderRadius: shape != BoxShape.circle
            ? borderRadius ??
            BorderRadius.all(Radius.circular(borderRadiusAll ?? PAConstant.constant.containerRadius))
            : null,
        onTap: onTap,
        splashColor: splashColor ?? Colors.transparent,
        highlightColor: splashColor ?? Colors.transparent,
        child: base,
      );
    } else {
      return base;
    }
  }
}
