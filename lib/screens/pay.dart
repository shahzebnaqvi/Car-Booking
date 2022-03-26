import 'package:bookcar/constant.dart/constant.dart';
import 'package:bookcar/screens/auth/forgetpass.dart';
import 'package:bookcar/screens/auth/signup.dart';
import 'package:bookcar/screens/home.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Pay extends StatefulWidget {
  @override
  State<Pay> createState() => _PayState();
}

class _PayState extends State<Pay> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Constants.mainColor,
        elevation: 0,
        title: Text("Payment with card"),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
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
                  'Payment with card ',
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
                      labelText: 'Fullname',
                    )),
              ),
              Text("14 Digit card number"),
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.22,
                    padding: EdgeInsets.all(10),
                    child: TextField(
                        cursorColor: Constants.blackcolor,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          labelText: '33',
                        )),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.22,
                    padding: EdgeInsets.all(10),
                    child: TextField(
                        cursorColor: Constants.blackcolor,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          labelText: '334',
                        )),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.22,
                    padding: EdgeInsets.all(10),
                    child: TextField(
                        cursorColor: Constants.blackcolor,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          labelText: '3434',
                        )),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.22,
                    padding: EdgeInsets.all(10),
                    child: TextField(
                        cursorColor: Constants.blackcolor,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          labelText: '433',
                        )),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.44,
                    padding: EdgeInsets.all(10),
                    child: TextField(
                        cursorColor: Constants.blackcolor,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          labelText: 'Exp Date',
                        )),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.44,
                    padding: EdgeInsets.all(10),
                    child: TextField(
                        cursorColor: Constants.blackcolor,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          labelText: 'CVV',
                        )),
                  ),
                ],
              ),
            ])),
      ),
      floatingActionButton: Container(
        width: MediaQuery.of(context).size.width * 0.9,
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
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Home()));
          },
          child: Text(
            "Finish Payment",
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.width * 0.05,
            ),
          ),
        ),
      ),
    );
  }
}
