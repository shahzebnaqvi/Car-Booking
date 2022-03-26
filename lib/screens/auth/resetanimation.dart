import 'dart:async';

import 'package:bookcar/constant.dart/constant.dart';
import 'package:bookcar/screens/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ResetAnimation extends StatefulWidget {
  const ResetAnimation({Key? key}) : super(key: key);

  @override
  State<ResetAnimation> createState() => _ResetAnimationState();
}

class _ResetAnimationState extends State<ResetAnimation> {
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 4),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Login())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              height: MediaQuery.of(context).size.width * 0.5,
              child: Lottie.asset("assets/lottiefile/reset.json")),
          Container(
            margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.05,
            ),
            child: Text(
              "Check Email Password Send",
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.05,
                  fontWeight: FontWeight.bold,
                  color: Constants.mainColor),
            ),
          ),
        ],
      ),
    ));
  }
}
