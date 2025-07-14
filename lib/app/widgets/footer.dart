import 'package:flutter/material.dart';
import 'package:mysite/changes/links.dart';
import 'package:mysite/core/util/constants.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);

    return Container(
      margin: EdgeInsets.only(top: size.height * 0.05),
      height: size.height * 0.07,
      width: size.width,
      alignment: Alignment.center,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Developed by ",
            style: TextStyle(color: theme.textTheme.bodyMedium?.color),
          ),
          _GitHubLink(),
          Text(
            " © 2024",
            style: TextStyle(color: theme.textTheme.bodyMedium?.color),
          ),
        ],
      ),
    );
  }
}

class _GitHubLink extends StatefulWidget {
  @override
  State<_GitHubLink> createState() => _GitHubLinkState();
}

class _GitHubLinkState extends State<_GitHubLink> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovering = true),
      onExit: (_) => setState(() => isHovering = false),
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () => openURL(gitHub),
        child: Text(
          "Bhumit Lukhi 💙",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: isHovering
                ? Theme.of(context).colorScheme.secondary
                : Theme.of(context).textTheme.bodyMedium?.color,
          ),
        ),
      ),
    );
  }
}
