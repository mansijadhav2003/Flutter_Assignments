import 'package:flutter/material.dart';
import 'package:product/model/product_class.dart';
import 'package:product/view/get_product.dart';
import 'package:provider/provider.dart';
import 'controller/add_details.dart';

//import 'controller/add_details.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context) {
      return ChangeNotifierProviderclass();
    }, builder: (context, child) {
      return MaterialApp(
        home: get_productdetails(),
      );
    });
  }
}
