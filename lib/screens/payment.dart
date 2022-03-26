import 'package:bookcar/constant.dart/constant.dart';
import 'package:bookcar/controller.dart/cartcontroller.dart';
import 'package:bookcar/screens/pay.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

final productController = Get.put(ProductController());

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
        elevation: 0,
        backgroundColor: Constants.mainColor,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: productController.mycart.length,
                itemBuilder: (BuildContext context, int index) {
                  return Row(children: [
                    Container(
                      height: 80,
                      width: 100.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/c1.png"),
                          // fit: BoxFit.fill,
                        ),
                        // shape: BoxShape.circle,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "abc car",
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.05),
                        ),
                        Text("3999"),
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          productController
                              .addtocart(productController.mycart[index]);
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.3),
                        child: Icon(Icons.add),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          productController
                              .removetocart(productController.mycart[index]);
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.03),
                        child: Icon(Icons.cancel),
                      ),
                    ),
                  ]);
                }),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 20),
            width: MediaQuery.of(context).size.width * 0.4,
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
                    context, MaterialPageRoute(builder: (context) => Pay()));
              },
              child: Text(
                "4000",
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.05,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 20),
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
                    context, MaterialPageRoute(builder: (context) => Pay()));
              },
              child: Text(
                "Proceed to Payment",
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.05,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
