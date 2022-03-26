import 'package:bookcar/constant.dart/bottombar.dart';
import 'package:bookcar/constant.dart/constant.dart';
import 'package:bookcar/screens/auth/login.dart';
import 'package:bookcar/screens/productdetail.dart';
import 'package:bookcar/screens/data.dart';
import 'package:bookcar/constant.dart/drawer.dart';
import 'package:flutter/material.dart';
import 'package:animation_wrappers/animation_wrappers.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(child: MyDrawer()),
      appBar: AppBar(
        title: const Text('Home'),
        elevation: 0,
        backgroundColor: Constants.mainColor,
      ),
      body: Center(
          child: ListView(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Constants.mainColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40))),
            child: Container(
              child: TextField(
                autofocus: false,
                style: TextStyle(fontSize: 15.0, color: Color(0xFFbdc6cf)),
                decoration: InputDecoration(
                  filled: true,
                  suffixIcon: Icon(Icons.search),
                  fillColor: Colors.white,
                  hintText: 'Search',
                  contentPadding: const EdgeInsets.only(
                      left: 14.0, bottom: 12.0, top: 12.0),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(25.7),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(25.7),
                  ),
                ),
              ),
              decoration: new BoxDecoration(
                  borderRadius: new BorderRadius.all(new Radius.circular(30.0)),
                  color: Colors.white),
              width: MediaQuery.of(context).size.width * 0.9,
              height: 50,
              margin: EdgeInsets.fromLTRB(
                  MediaQuery.of(context).size.width * 0.02,
                  MediaQuery.of(context).size.height * 0.03,
                  MediaQuery.of(context).size.width * 0.02,
                  MediaQuery.of(context).size.height * 0.03),
              padding:
                  EdgeInsets.all(MediaQuery.of(context).size.width * 0.005),
            ),
          ),
          Container(
              margin: EdgeInsets.only(left: 20, top: 20),
              child: Container(
                  child: Text(
                "Browse Car Types",
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.06,
                    color: Constants.mainColor),
              ))),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.34,
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: carname.length,
                itemBuilder: (BuildContext context, int index) {
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      FadedScaleAnimation(
                        Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Constants.mainColor,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20.0),
                                  )),
                              padding: EdgeInsets.all(
                                  MediaQuery.of(context).size.width * 0.019),
                              width: MediaQuery.of(context).size.width * 0.281,
                              height: MediaQuery.of(context).size.width * 0.41,
                              margin: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.width * 0.1,
                                  bottom:
                                      MediaQuery.of(context).size.width * 0.03,
                                  left:
                                      MediaQuery.of(context).size.width * 0.02,
                                  right:
                                      MediaQuery.of(context).size.width * 0.01),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      carname[index],
                                      style:
                                          TextStyle(color: Constants.mainColor),
                                    ),
                                    Text(
                                      carrestimatedprice[index],
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Constants.lightColor),
                                    ),
                                  ]),
                            ),
                            Positioned(
                              bottom: MediaQuery.of(context).size.width * 0.12,
                              child: Image(
                                image: AssetImage(
                                  carimages[index],
                                ),
                                width: MediaQuery.of(context).size.width * 0.3,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  );
                }),
          ),
          Container(
              margin: EdgeInsets.only(left: 20, bottom: 20),
              child: Container(
                  child: Text(
                "Choose Sub Category",
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.06,
                    color: Constants.mainColor),
              ))),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.9,
            child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 4,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: MediaQuery.of(context).size.width * 0.5,
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Productdetail(
                                  productid: index,
                                  productname: index,
                                  productimage: index,
                                  producttitle: index,
                                  productprice: index)),
                        );
                      },
                      child: FadedScaleAnimation(
                        Container(
                            margin: EdgeInsets.all(2),
                            child: containericon(context, Homeicon[index],
                                "${Hometitle[index]}", Colors.white)),
                      ));
                }),
          ),
        ],
      )),
      bottomNavigationBar: bottombar(),
    );
  }
}

Widget containericon(context, iconname, icontext, backgroundcolor) {
  return Container(
    padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.width * 0.08,
        left: MediaQuery.of(context).size.width * 0.05,
        bottom: MediaQuery.of(context).size.width * 0.05,
        right: MediaQuery.of(context).size.width * 0.05),
    margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.005),
    decoration: BoxDecoration(
      color: backgroundcolor,
      borderRadius: BorderRadius.all(
          Radius.circular(MediaQuery.of(context).size.width * 0.03)),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.2),
          spreadRadius: 1,
          blurRadius: 2,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ],
    ),
    width: MediaQuery.of(context).size.width * 0.45,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 80,
          width: 1000.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/c1.png"),
              // fit: BoxFit.fill,
            ),
            // shape: BoxShape.circle,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.width * 0.04,
          ),
          child: Text(
            icontext,
            style: TextStyle(
                color: Constants.mainColor,
                fontSize: MediaQuery.of(context).size.width * 0.05,
                fontWeight: FontWeight.bold),
          ),
        ),
        Text(
          "3000",
          style: TextStyle(
              color: Constants.mainColor,
              fontSize: MediaQuery.of(context).size.width * 0.04),
        ),
      ],
    ),
  );
}
