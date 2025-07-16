import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:mysite/changes/strings.dart';
import 'package:mysite/core/configs/configs.dart';

/// Common function to generate TyperAnimatedText list
List<TyperAnimatedText> buildAnimatedTexts({
  required double fontSize,
  Duration speed = const Duration(milliseconds: 50),
}) {
  final List<String> animations = [
    animationtxt1,
    animationtxt2,
    animationtxt3,
    animationtxt4,
    animationtxt5,
  ];

  return animations.map((text) {
    return TyperAnimatedText(
      text,
      speed: speed,
      textStyle: AppText.h2.copyWith(
        fontSize: fontSize,
        overflow: TextOverflow.ellipsis,
        fontFamilyFallback: ['Segoe UI Emoji', 'Apple Color Emoji', 'Noto Color Emoji'],

      ),
    );
  }).toList();
}

/// Use these wherever needed
final List<TyperAnimatedText> desktopList = buildAnimatedTexts(fontSize: 28);
final List<TyperAnimatedText> tabList = buildAnimatedTexts(fontSize: 20);
final List<TyperAnimatedText> mobileList = buildAnimatedTexts(fontSize: 16);
