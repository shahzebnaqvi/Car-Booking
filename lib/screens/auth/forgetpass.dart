import 'package:bookcar/constant.dart/constant.dart';
import 'package:bookcar/screens/auth/resetanimation.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
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
          child: ListView(
            children: [
              Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.05),
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Reset it",
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
                      labelText: 'Enter Email',
                    )),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Constants.mainColor),
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ResetAnimation()));
                  },
                  child: Text("Reset"))
            ],
          ),
        ),
      ),
    );
  }
}
