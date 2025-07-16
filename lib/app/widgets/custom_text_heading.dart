import 'package:flutter/material.dart';
import 'package:mysite/core/configs/configs.dart';
import 'package:mysite/core/res/responsive.dart';

class CustomSectionHeading extends StatelessWidget {
  final String text;

  const CustomSectionHeading({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Responsive(
      desktop: _buildHeading(text, 56),
      tablet: _buildHeading(text, 36),
      mobile: _buildHeading(text, 26),
    );
  }

  Widget _buildHeading(String text, double fontSize) {
    return Text(
      text,
      style: TextStyle(fontSize: fontSize),
    );
  }
}

class CustomSectionSubHeading extends StatelessWidget {
  final String text;

  const CustomSectionSubHeading({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    final textColor = Theme.of(context).textColor.withValues(alpha: 0.6);

    return Responsive(
      desktop: _buildSubHeading(text, 18, textColor),
      tablet: _buildSubHeading(text, 16, textColor),
      mobile: _buildSubHeading(text, 13, textColor),
    );
  }

  Widget _buildSubHeading(String text, double fontSize, Color color) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: fontSize,
        color: color,
      ),
    );
  }
}
