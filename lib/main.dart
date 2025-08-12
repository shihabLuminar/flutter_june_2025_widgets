import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_screen.dart';

void main() {
  runApp(MyApp());
}

// stles- Flutter stateless widget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen());
  }
}
