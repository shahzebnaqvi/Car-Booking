import 'package:bookcar/constant.dart/constant.dart';
import 'package:bookcar/screens/auth/login.dart';
import 'package:bookcar/screens/auth/loginhome.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  final String id = "/SplashScreen";

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Constants.mainColor,
      body: Container(
        width: screenSize.width,
        height: screenSize.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage("assets/car1.png")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginHome()));
                },
                child: Text(" Book A Car"))
          ],
        ),
      ),
    );
  }
}
