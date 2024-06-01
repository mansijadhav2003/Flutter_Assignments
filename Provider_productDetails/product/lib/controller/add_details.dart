import 'package:flutter/material.dart';
import 'package:product/model/product_class.dart';

class ChangeNotifierProviderclass with ChangeNotifier {
  ProductModel? pobj;
  void addData({required ProductModel obj}) {
    pobj = obj;
    //notifyListeners();
  }

  void addFavourite() {
    pobj!.isfavourite = !pobj!.isfavourite;
    notifyListeners();
  }

  void addquntitiy() {
    pobj!.quantity = pobj!.quantity + 1;
    notifyListeners();
  }
}
