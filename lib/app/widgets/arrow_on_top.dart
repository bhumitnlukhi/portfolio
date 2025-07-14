import 'package:flutter/material.dart';
import 'package:mysite/core/animations/entrance_fader.dart';
import 'package:mysite/core/color/colors.dart';
import 'package:mysite/core/providers/scroll_provider.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class ArrowOnTop extends StatefulWidget {
  final double height;

  const ArrowOnTop({super.key, required this.height});

  @override
  State<ArrowOnTop> createState() => _ArrowOnTopState();
}

class _ArrowOnTopState extends State<ArrowOnTop> {
  bool isHover = false;

  void _onHover(bool hover) {
    if (isHover != hover) {
      setState(() => isHover = hover);
    }
  }

  @override
  Widget build(BuildContext context) {
    final scrollProvider = Provider.of<ScrollProvider>(context, listen: false);

    return Positioned(
      bottom: 100,
      right: -7,
      child: EntranceFader(
        offset: const Offset(0, 20),
        child: Padding(
          padding: EdgeInsets.only(top: widget.height * 0.025),
          child: MouseRegion(
            onEnter: (_) => _onHover(true),
            onExit: (_) => _onHover(false),
            child: GestureDetector(
              onTap: () => scrollProvider.jumpTo(0),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 250),
                decoration: BoxDecoration(
                  gradient: isHover ? buttonGradi : pinkpurple,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(8.0),
                    bottomLeft: Radius.circular(8.0),
                  ),
                  boxShadow: isHover
                      ? [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.2),
                      blurRadius: 12,
                      offset: const Offset(2, 3),
                    )
                  ]
                      : [],
                ),
                child: Icon(
                  Icons.arrow_drop_up_outlined,
                  color: isHover ? blackColor : whiteColor,
                  size: 5.h,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
