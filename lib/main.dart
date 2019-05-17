import 'package:flutter/material.dart';
import './pages/welcome_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowMaterialGrid: false,
      theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.lime,
          accentColor: Colors.limeAccent),
      home: WelcomePage(),
    );
  }
}
