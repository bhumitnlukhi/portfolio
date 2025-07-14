import 'package:flutter/material.dart';

class Space {
  /// Dynamic horizontal spacing
  static Widget x(double value) => SizedBox(width: value);

  /// Dynamic vertical spacing
  static Widget y(double value) => SizedBox(height: value);

  /// Common static spacers (can be reused where needed)
  static const Widget x1 = SizedBox(width: 50);
  static const Widget xm = Expanded(child: SizedBox(width: double.infinity));

// If you later plan to use `y1`, `x2`, etc., you can uncomment and initialize them safely.
}
