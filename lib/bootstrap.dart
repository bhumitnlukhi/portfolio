import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

Future<void> bootstrap(Widget Function() builder) async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    Sizer(
      builder: (context, orientation, deviceType) {
        return builder();
      },
    ),
  );
}
