import 'package:bookcar/constant.dart/constant.dart';
import 'package:bookcar/screens/auth/login.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController username = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController phone = TextEditingController();
  String _dropDownValue = "";
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
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.05),
            width: MediaQuery.of(context).size.width * 0.93,
            child: ListView(children: [
              Container(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.1,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                    controller: username,
                    cursorColor: Constants.blackcolor,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: 'UserName',
                    )),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                    controller: email,
                    cursorColor: Constants.blackcolor,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: 'Email',
                    )),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                    controller: phone,
                    cursorColor: Constants.blackcolor,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: 'Phone Number',
                    )),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                    controller: password,
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
                            setState(
                                () => this._showPassword = !this._showPassword);
                          }),
                    )),
              ),
              Container(
                alignment: Alignment.topRight,
                width: MediaQuery.of(context).size.width * 0.3,
                child: DropdownButton<String>(
                  hint: _dropDownValue == ""
                      ? Text('Gender')
                      : Text(
                          _dropDownValue,
                          style: TextStyle(color: Constants.mainColor),
                        ), // Not necessary for Option 1

                  items: <String>['Male', 'Female'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      _dropDownValue = value!;
                    });
                  },
                ),
              ),
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
                        MaterialPageRoute(builder: (context) => Login()));
                  },
                  child: Text(
                    "Create Account",
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
                        text: 'Already have account? ',
                        style: TextStyle(color: Constants.mainColor),
                        children: <TextSpan>[
                          new TextSpan(
                            text: 'Sign up',
                            style: TextStyle(fontWeight: FontWeight.bold),
                            recognizer: new TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Login()));
                              },
                          ),
                        ])),
              ),
            ])),
      ),
    );
  }
}
