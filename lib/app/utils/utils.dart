import 'package:flutter/material.dart';
import 'package:mysite/app/sections/contact/contact.dart';
import 'package:mysite/app/sections/home/home.dart';
import 'package:mysite/app/sections/portfolio/portfolio.dart';
import 'package:mysite/app/sections/services/services.dart';
import 'package:mysite/app/widgets/footer.dart';

class BodyUtils {
  static const List<Widget> views = [
    Offstage(
      offstage: true,
      child: Text(
        '🤖 🍏 🚀 💙',
        style: TextStyle(fontFamilyFallback: ['Segoe UI Emoji']),
      ),
    ),
    HomePage(),
    Services(),
    Portfolio(),
    Contact(),
    Footer(),
  ];
}
