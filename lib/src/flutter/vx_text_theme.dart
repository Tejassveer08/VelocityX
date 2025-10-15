/*
 * Copyright 2025 VelocityX
 */

import 'package:flutter/widgets.dart';

/// Provides a default [TextStyle] for VelocityX text builders across the app.
class VxTextTheme extends InheritedWidget {
  const VxTextTheme({Key? key, required this.style, required Widget child})
      : super(key: key, child: child);

  /// The default text style to apply to `VxTextBuilder` and related builders.
  final TextStyle style;

  /// Obtain the nearest [VxTextTheme] up the tree.
  static VxTextTheme? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<VxTextTheme>();
  }

  @override
  bool updateShouldNotify(VxTextTheme oldWidget) => oldWidget.style != style;
}


