import 'package:flutter/material.dart';
// import 'package:flutter_application_1/ui/dashboard.dart';
import 'package:flutter_application_1/ui/splashscreen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
