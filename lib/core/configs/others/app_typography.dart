import 'package:flutter/material.dart';

class AppText {
  static late TextStyle h1;
  static late TextStyle h1b;
  static late TextStyle h2;
  static late TextStyle h3;

  static void init() {
    const base = TextStyle(fontFamily: 'Poppins');

    h1 = base.copyWith(fontSize: 22);
    h1b = h1.copyWith(fontWeight: FontWeight.w600);

    h2 = base.copyWith(fontWeight: FontWeight.w400);
    h3 = base.copyWith(fontWeight: FontWeight.w100);
  }
}
