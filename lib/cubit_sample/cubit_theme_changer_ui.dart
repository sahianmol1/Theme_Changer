import 'dart:math';

import 'package:bloc_theme_changer/blocs/theme/theme_bloc.dart';
import 'package:bloc_theme_changer/cubit_sample/cubit/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CubitHomePage extends StatelessWidget {
  const CubitHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ThemeCubit>(
      create: (context) => ThemeCubit(),
      child: BlocBuilder<ThemeCubit, ThemeCubitState>(
        builder: (context, state) {
          return MaterialApp(
            title: "CubitTheme Changer",
            theme: state.appTheme == AppTheme.light? ThemeData.light(): ThemeData.dark(),
            home: Scaffold(
              appBar: AppBar(
                title: const Text("Cubit App Theme Changer"),
              ),
              body: Center(
                child: ElevatedButton(
                  onPressed: () {
                    int randInt = Random().nextInt(10);
                    BlocProvider.of<ThemeCubit>(context).changeTheme(randInt);
                  },
                  child: const Text("Change Theme"),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
