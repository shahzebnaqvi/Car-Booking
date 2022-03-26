import 'package:bookcar/constant.dart/constant.dart';
import 'package:flutter/material.dart';

class bottombar extends StatelessWidget {
  const bottombar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40), topRight: Radius.circular(40)),
        color: Constants.mainColor,
      ),
      // width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.08,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        InkWell(
          child: Icon(
            Icons.home,
            size: 30,
            color: Colors.white,
          ),
        ),
        InkWell(
          child: Icon(
            Icons.search_rounded,
            size: 30,
            color: Colors.white,
          ),
        ),
        InkWell(
          child: Icon(
            Icons.pages_rounded,
            size: 30,
            color: Colors.white,
          ),
        ),
        InkWell(
          child: Icon(
            Icons.person_rounded,
            size: 30,
            color: Colors.white,
          ),
        )
      ]),
    );
  }
}
