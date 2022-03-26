import 'dart:async';

import 'package:bookcar/constant.dart/constant.dart';
import 'package:bookcar/screens/auth/login.dart';
import 'package:bookcar/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Payed extends StatefulWidget {
  const Payed({Key? key}) : super(key: key);

  @override
  State<Payed> createState() => _PayedState();
}

class _PayedState extends State<Payed> {
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 4),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Home())));
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
              child: Lottie.asset("assets/lottiefile/payment.json")),
          Container(
            margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.05,
            ),
            child: Text(
              "Your Order is Confirmed",
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.07,
                  fontWeight: FontWeight.bold,
                  color: Constants.mainColor),
            ),
          ),
        ],
      ),
    ));
  }
}
