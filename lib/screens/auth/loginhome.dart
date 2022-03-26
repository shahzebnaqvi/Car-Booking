import 'package:bookcar/constant.dart/constant.dart';
import 'package:bookcar/screens/auth/login.dart';
import 'package:bookcar/screens/auth/signup.dart';
import 'package:flutter/material.dart';

class LoginHome extends StatelessWidget {
  const LoginHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              // image: new DecorationImage(
              //   colorFilter: new ColorFilter.mode(
              //       Colors.black.withOpacity(0.8), BlendMode.dstATop),
              //   image: AssetImage("assets/download.jpg"),
              //   fit: BoxFit.cover,
              // ),
              ),
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).size.height * 0.08),
                      child: Text(
                        "Book For Car",
                        style: TextStyle(
                            color: Constants.mainColor,
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.width * 0.02,
                          bottom: MediaQuery.of(context).size.width * 0.02),
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: ElevatedButton(
                        child: Text('Sign In'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Login()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  MediaQuery.of(context).size.width * 0.05)),
                          primary: Constants.mainColor,
                          padding: EdgeInsets.symmetric(
                              horizontal: 50, vertical: 20),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.width * 0.02,
                          bottom: MediaQuery.of(context).size.width * 0.02),
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: ElevatedButton(
                        child: Text('Sign Up'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Signup()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                MediaQuery.of(context).size.width * 0.05),
                          ),
                          primary: Constants.mainColor,
                          padding: EdgeInsets.symmetric(
                              horizontal: 50, vertical: 20),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Image(
                image: AssetImage("assets/car.png"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
