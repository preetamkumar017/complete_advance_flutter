import 'package:complete_advance_flutter/presentation/resources/theme_manger.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  //const MyApp({super.key}); //default constructor
  MyApp._internal(); //private named constructor
  int appState = 0;

  static final MyApp instance = MyApp._internal(); //Single instance -- singleton
  factory MyApp() => instance; //factory for the class instance

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: getApplicationTheme(),
    );
  }
}
