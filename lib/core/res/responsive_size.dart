import 'package:flutter/material.dart';

/// Returns responsive font size based on screen width.
double isFontSize(BuildContext context, double val) {
  double width = MediaQuery.of(context).size.width;

  if (width >= 1024) {
    return val; // Desktop: original size
  } else if (width >= 600) {
    return val * 0.95; // Tablet: slightly smaller
  } else {
    return val * 0.90; // Mobile: slightly smaller
  }
}
