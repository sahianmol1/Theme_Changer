import 'dart:math';
import 'package:bloc_theme_changer/blocs/theme/theme_bloc.dart';
import 'package:bloc_theme_changer/cubit_sample/cubit_theme_changer_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<ThemeBloc>(
      create: (context) => ThemeBloc(),
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          return const CubitHomePage();
        },
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Theme Changer"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            final int randInt = Random().nextInt(10);
            // context.read<ThemeBloc>().add(ChangeThemeEvent(randInt));
            BlocProvider.of<ThemeBloc>(context).add(ChangeThemeEvent(randInt));
          },
          child: const Text("Change Theme"),
        ),
      ),
    );
  }
}
