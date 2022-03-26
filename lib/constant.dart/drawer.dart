import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:bookcar/constant.dart/constant.dart';
import 'package:bookcar/screens/auth/login.dart';
import 'package:bookcar/screens/home.dart';
import 'package:bookcar/screens/payment.dart';
import 'package:bookcar/screens/profile.dart';
import 'package:flutter/material.dart';

class Tile {
  String? title;
  IconData icon;
  Widget route;
  Tile(this.title, this.icon, this.route);
}

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).textTheme;
    // Tile(context.getTranslationOf('account_details'), Icons.person_outlined,
    //     HomePage()),
    List<Tile> tiles = [
      Tile("My Cart", Icons.next_plan, Payment()),
      Tile("Profile", Icons.next_plan, Profile()),
      Tile("Logout", Icons.next_plan, Login()),
    ];
    return Drawer(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: ListView(
            children: [
              ListTile(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                },
                dense: true,
                leading: FadedScaleAnimation(
                  CircleAvatar(
                    radius: 20,
                    child: Image.asset("assets/car1.png"),
                  ),
                  durationInMilliseconds: 600,
                ),
                title: Text(
                  'welcome',
                ),
                subtitle: Text(
                  "Shahzeb Naqvi",
                  style: theme.bodyText1!
                      .copyWith(fontSize: 15, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              FadedScaleAnimation(
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey[400]!, width: 0.5),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(),
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10)),
                          child: ListTile(
                            horizontalTitleGap: 0,
                            trailing: Icon(
                              Icons.chevron_right,
                              color: Colors.white,
                              size: 20,
                            ),
                            dense: true,
                            leading: Container(
                                margin: EdgeInsets.only(top: 5),
                                padding: EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    border: Border.all(
                                        color: Colors.white, width: 0.5)),
                                child: Icon(
                                  Icons.account_balance_wallet,
                                  color: Colors.white,
                                  size: 15,
                                )),
                            title: Text('My Account'),
                            subtitle: Text(
                              "₹0.00",
                              style: theme.bodyText1!.copyWith(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Home()));
                        },
                        child: Container(
                          width: double.infinity,
                          color: Constants.mainColor,
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Center(
                            child: Text(
                              'My Book Cars',
                              style: TextStyle(color: Constants.lightColor),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                durationInMilliseconds: 600,
              ),
              SizedBox(
                height: 20,
              ),
              FadedSlideAnimation(
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: tiles.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        ListTile(
                          onTap: () {
                            Navigator.pop(context);
                            if (index == 8)
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Home()));
                            else if (index != 0)
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          tiles[index].route));
                          },
                          horizontalTitleGap: 0,
                          leading: Icon(
                            tiles[index].icon,
                            size: 15,
                          ),
                          dense: true,
                          trailing: Icon(
                            Icons.chevron_right,
                            color: Colors.black,
                            size: 10,
                          ),
                          title: Text(
                            tiles[index].title!,
                            style: theme.bodyText1!.copyWith(
                                fontSize: 12,
                                color: index == 7 ? Colors.red : Colors.black),
                          ),
                        ),
                        Divider(
                          height: 2,
                          color: Constants.mainColor,
                        )
                      ],
                    );
                  },
                ),
                beginOffset: Offset(-0.4, 0),
                endOffset: Offset(0, 0),
                slideCurve: Curves.linearToEaseOut,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
