import 'package:flutter/material.dart';
import 'package:product/model/product_class.dart';
import 'package:product/view/display_details.dart';
import 'package:provider/provider.dart';
import 'package:product/controller/add_details.dart';
class get_productdetails extends StatefulWidget{
  @override
  State createState()=>get_productdetailsState();
}
class get_productdetailsState extends State{
   TextEditingController imagepath = TextEditingController();
  TextEditingController prouduct_name = TextEditingController();
  TextEditingController product_price = TextEditingController();
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product Details"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: imagepath,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                hintText: "Enter image url",
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller:prouduct_name,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                hintText: "Enter product name",
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: product_price,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                hintText: "Enter product price",
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                
                var obj1=ProductModel(
                  image: imagepath.text.trim(),
                  prouctname:prouduct_name.text.trim(),
                  price: product_price.text.trim(),
                  isfavourite: false,
                  quantity: 0,
                );
                Provider.of<ChangeNotifierProviderclass>(context,listen: false).addData(obj: obj1);
              
                Navigator.push(context, MaterialPageRoute(builder: (context) => display_productdetails()));
              },
              child: const Text("Submit"),
            ),
            
          ],
        ),
      ),
    );
  }
}

  