import 'package:bookcar/constant.dart/constant.dart';
import 'package:bookcar/controller.dart/cartcontroller.dart';
import 'package:bookcar/screens/home.dart';
import 'package:bookcar/screens/payment.dart';
import 'package:flutter/material.dart';
import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:get/get.dart';

class Productdetail extends StatefulWidget {
  final productid;
  final productname;
  final productimage;
  final producttitle;
  final productprice;
  const Productdetail(
      {Key? key,
      @required this.productid,
      @required this.productname,
      @required this.productimage,
      @required this.producttitle,
      @required this.productprice})
      : super(key: key);

  @override
  State<Productdetail> createState() => _ProductdetailState();
}

class _ProductdetailState extends State<Productdetail> {
  final productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Standard'),
        elevation: 0,
        backgroundColor: Constants.mainColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.all(
                MediaQuery.of(context).size.width * 0.06,
              ),
              height: MediaQuery.of(context).size.height * .3,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                // color: Constants.lightColor,
                // boxShadow: [
                //   BoxShadow(
                //     color: Colors.grey.withOpacity(0.5),
                //     spreadRadius: 5,
                //     blurRadius: 7,
                //     offset: Offset(0, 3), // changes position of shadow
                //   ),
                // ],
                image: DecorationImage(
                  image: AssetImage("assets/c3.png"),
                  // fit: BoxFit.fill,
                ),
                // shape: BoxShape.circle,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FadedScaleAnimation(
                  Container(
                      margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.08),
                      child: Text(
                        '405 rs',
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.08,
                            fontWeight: FontWeight.bold),
                      )),
                ),
                Container(
                    margin: EdgeInsets.all(
                      MediaQuery.of(context).size.width * 0.08,
                    ),
                    child: Icon(Icons.favorite_outline))
              ],
            ),
            Container(
                margin: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.08),
                child: Text(
                  "Standard",
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.05,
                      fontWeight: FontWeight.bold),
                )),
            Container(
                margin: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.08,
                    right: MediaQuery.of(context).size.width * 0.06),
                child: Text(
                  "daaaiasjmo aooasko oaskas oko iashihi ijias josjta daaaiasjmo aooasko oaskasoko iashihi ijias josjta",
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.05,
                      fontWeight: FontWeight.normal),
                ))
          ],
        ),
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
            productController.addtocart(
              widget.productid,
            );
            print(productController.mycart);
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Payment()));
          },
          child: Text(
            "Book Now",
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.width * 0.05,
            ),
          ),
        ),
      ),
    );
  }
}
