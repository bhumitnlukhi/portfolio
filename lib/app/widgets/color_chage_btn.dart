import 'package:flutter/material.dart';
import 'package:mysite/core/color/colors.dart';
import 'package:mysite/core/configs/configs.dart';
import 'package:mysite/core/res/responsive.dart';

class ColorChageButton extends StatelessWidget {
  final String text;
  final Function() onTap;

  const ColorChageButton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Responsive(
      desktop: HoverAnimatedButton(
        text: text,
        onTap: onTap,
        height: 65,
        width: 250,
        fontSize: 18,
        borderWidth: 3,
        borderRadius: 6,
      ),
      tablet: HoverAnimatedButton(
        text: text,
        onTap: onTap,
        height: 50,
        width: 200,
        fontSize: 16,
        borderWidth: 2,
        borderRadius: 5,
      ),
      mobile: HoverAnimatedButton(
        text: text,
        onTap: onTap,
        height: 35,
        width: 125,
        fontSize: 13,
        borderWidth: 1.5,
        borderRadius: 3,
      ),
    );
  }
}

class HoverAnimatedButton extends StatefulWidget {
  final String text;
  final Function() onTap;
  final double height;
  final double width;
  final double fontSize;
  final double borderRadius;
  final double borderWidth;

  const HoverAnimatedButton({
    super.key,
    required this.text,
    required this.onTap,
    required this.height,
    required this.width,
    required this.fontSize,
    required this.borderRadius,
    required this.borderWidth,
  });

  @override
  State<HoverAnimatedButton> createState() => _HoverAnimatedButtonState();
}

class _HoverAnimatedButtonState extends State<HoverAnimatedButton> {
  bool _isHover = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return MouseRegion(
      onEnter: (_) => setState(() => _isHover = true),
      onExit: (_) => setState(() => _isHover = false),
      child: GestureDetector(
        onTap: () {
          setState(() => _isHover = true); // brief fill animation
          widget.onTap();
        },
        child: Stack(
          children: [
            Container(
              height: widget.height,
              width: widget.width,
              decoration: BoxDecoration(
                border: Border.all(
                  color: theme.textColor,
                  width: widget.borderWidth,
                ),
                borderRadius: BorderRadius.circular(widget.borderRadius),
              ),
            ),
            AnimatedContainer(
              duration: const Duration(milliseconds: 250),
              height: widget.height,
              width: _isHover ? widget.width : 0,
              decoration: BoxDecoration(
                gradient: pinkpurple,
                borderRadius: BorderRadius.circular(widget.borderRadius),
              ),
            ),
            SizedBox(
              height: widget.height,
              width: widget.width,
              child: Center(
                child: Text(
                  widget.text.toUpperCase(),
                  style: TextStyle(
                    fontSize: widget.fontSize,
                    color: _isHover ? whiteColor : theme.textColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
