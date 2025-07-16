import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:mysite/app/sections/home/widgets/animation_text.dart';
import 'package:mysite/app/widgets/color_chage_btn.dart';
import 'package:mysite/changes/img.dart';
import 'package:mysite/changes/links.dart';
import 'package:mysite/changes/strings.dart';
import 'package:mysite/core/animations/entrance_fader.dart';
import 'package:mysite/core/animations/zoom_animation.dart';
import 'package:mysite/core/configs/configs.dart';
import 'package:mysite/core/res/responsive_size.dart';
import 'package:sizer/sizer.dart';
import 'package:universal_html/html.dart' as html;

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 15.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Left Section (Text + Button)
          SizedBox(
            width: 65.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Hello + Wave Emoji
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      hellotag,
                      style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                    const SizedBox(width: 8),
                    EntranceFader(
                      offset: const Offset(0, 0),
                      delay: const Duration(seconds: 2),
                      duration: const Duration(milliseconds: 800),
                      child: Image.asset(StaticImage.hi, height: 40),
                    ),
                  ],
                ),

               // Space.y(0.5.w),
                SizedBox(height: 5.h),

                /// Your Name
                Text(
                  yourname,
                  style: const TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                SizedBox(height: 5.h),

                /// Services Text with AnimatedTextKit
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      "Skills in Action : ",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Flexible(
                      child: AnimatedTextKit(
                        isRepeatingAnimation: true,
                        repeatForever: true,
                        animatedTexts: desktopList,
                        displayFullTextOnTap: true,
                        pause: const Duration(milliseconds: 1000),
                      ),
                    ),
                  ],
                ),

                Space.y(1.5.w),

                /// Description Text
                Padding(
                  padding: EdgeInsets.only(right: 10.w),
                  child: Text(
                    miniDescription,
                    style: TextStyle(
                      fontSize: isFontSize(context, 18),
                      fontWeight: FontWeight.w400,
                      color: theme.textColor.withValues(alpha: 0.6),
                    ),
                  ),
                ),

                Space.y(3.w),

                /// Download CV Button
                ColorChageButton(
                  text: '📄  View My CV',
                  onTap: () {
                    html.window.open(resume, "pdf");
                  },
                ),
              ],
            ),
          ),

          /// Right Section (Zoom Animation)
          const ZoomAnimations(),
        ],
      ),
    );
  }
}
