import 'package:flutter/material.dart';
import 'package:onboarding_screens/onboarding.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.light),
      //darkTheme: ThemeData(brightness: Brightness.dark),
      //themeMode: ThemeMode.system,
      home: const Onboarding(),
    );
  }
}
