import 'package:bookcar/constant.dart/splash.dart';
import 'package:bookcar/screens/auth/login.dart';
import 'package:bookcar/screens/auth/loginhome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
