import 'dart:collection';

import 'package:get/get.dart';

class ProductController extends GetxController {
  List mycart = [].obs;
  addtocart(var productid) {
    mycart.add(productid);
    mycart.sort();
    print(mycart);
    update();
  }

  removetocart(var productid) {
    mycart.remove(productid);
    mycart.sort();
    print(mycart);
    update();
  }

  favtocart(var productid) {
    mycart.remove(productid);
    mycart.sort();
    print(mycart);
    update();
  }
}
