import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mysite/core/theme/app_theme.dart';
import 'package:provider/provider.dart';

import 'core/providers/scroll_provider.dart';
import 'core/providers/drawer_provider.dart';
import 'core/theme/cubit/theme_cubit.dart';
import 'my_site.dart';

class AppEntry extends StatelessWidget {
  const AppEntry({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ScrollProvider()),
        ChangeNotifierProvider(create: (_) => DrawerProvider()),
      ],
      child: BlocProvider(
        create: (_) => ThemeCubit(),
        child: BlocBuilder<ThemeCubit, ThemeState>(
          builder: (_, state) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: "Bhumit Lukhi",
              theme: AppTheme.themeData(state.isDarkThemeOn, context),
              home: const MySite(),
            );
          },
        ),
      ),
    );
  }
}
