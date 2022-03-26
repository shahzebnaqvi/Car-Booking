import 'package:bookcar/constant.dart/constant.dart';
import 'package:bookcar/screens/auth/forgetpass.dart';
import 'package:bookcar/screens/auth/signup.dart';
import 'package:bookcar/screens/home.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: Constants.mainColor,
            ),
          ),
        ),
        body: Center(
          child: Container(
              width: MediaQuery.of(context).size.width * 0.93,
              child: ListView(children: [
                Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.05),
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.1,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                      cursorColor: Constants.blackcolor,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: 'Email',
                      )),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                      cursorColor: Constants.blackcolor,
                      obscureText: !this._showPassword,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: 'Password',
                        suffixIcon: IconButton(
                            icon: Icon(
                              Icons.remove_red_eye,
                              color: this._showPassword
                                  ? Constants.bluecolor
                                  : Constants.mediumColor,
                            ),
                            onPressed: () {
                              setState(() =>
                                  this._showPassword = !this._showPassword);
                            }),
                      )),
                ),
                Container(
                    alignment: Alignment.topRight,
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ForgetPassword()));
                        },
                        child: Text(
                          'Forgot your Credentials?',
                          style: TextStyle(color: Constants.mainColor),
                        ))),
                Container(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Constants.mainColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              MediaQuery.of(context).size.width * 0.05),
                        ),
                        minimumSize: Size(
                            20,
                            MediaQuery.of(context).size.height *
                                0.06) // put the width and height you want
                        ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Home()));
                    },
                    child: Text(
                      "Sign in",
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.05,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.014),
                  child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                          text: 'Does not have account? ',
                          style: TextStyle(color: Constants.mainColor),
                          children: <TextSpan>[
                            new TextSpan(
                              text: 'Sign in',
                              style: TextStyle(fontWeight: FontWeight.bold),
                              recognizer: new TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Signup()));
                                },
                            ),
                          ])),
                ),
              ])),
        ));
  }
}
