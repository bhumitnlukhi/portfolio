import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mysite/app/sections/main/main_section.dart';
import 'bloc/connected_bloc.dart';

class NChecking extends StatelessWidget {
  const NChecking({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ConnectedBloc, ConnectedState>(
      builder: (context, state) {
        if (state is ConnectedSucessState) {
          return const MainPage();
        } else if (state is ConnectedFailureState) {
          return const NoConnectionError();
        } else {
          // While state is loading or uninitialized, show loader or splash
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        }
      },
    );
  }
}

class NoConnectionError extends StatelessWidget {
  const NoConnectionError({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Connection failed!",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
