import 'package:flutter/material.dart';
import 'package:mysite/core/configs/configs.dart';
import 'package:mysite/core/res/responsive.dart';

class NavBarLogo extends StatelessWidget {
  const NavBarLogo({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDesktop = Responsive.isDesktop(context);

    final textStyle = TextStyle(
      color: theme.textColor,
      fontWeight: FontWeight.w100,
      fontSize: isDesktop ? 32 : 20,
    );

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text("< ", style: textStyle),
        Text("Bhumit Lukhi", style: textStyle),
        Text(isDesktop ? " />\t\t" : " />", style: textStyle),
      ],
    );
  }
}
