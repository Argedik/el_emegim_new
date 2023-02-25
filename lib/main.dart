import 'package:el_emegim/constants/global_variables.dart';
import 'package:el_emegim/features/auth/screens/auth_screen.dart';
import 'package:el_emegim/router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'El Emeğim',
        theme: ThemeData(
            // primarySwatch: Colors.blue,
            scaffoldBackgroundColor: GlobalVariables.backgroundColor,
            colorScheme: const ColorScheme.light(
                primary: GlobalVariables.secondaryColor),
            appBarTheme: const AppBarTheme(
              elevation: 0,
              iconTheme: IconThemeData(color: Colors.black),
            )),
        onGenerateRoute: (settings) => generateRoute(settings),
        home: const AuthScreen());
  }
}
