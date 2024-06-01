import 'package:flutter/material.dart';
import 'package:product/controller/add_details.dart';
import 'package:product/model/product_class.dart';
import 'package:provider/provider.dart';

class display_productdetails extends StatefulWidget {
  @override
  State createState() => display_productdetailsState();
}

class display_productdetailsState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Show Details"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
            child: Column(
          children: [
            Image.network(
              "${Provider.of<ChangeNotifierProviderclass>(context).pobj!.image}",
              height: 200,
              width: 200,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
                "${Provider.of<ChangeNotifierProviderclass>(context).pobj!.prouctname}"),
            SizedBox(
              height: 20,
            ),
            Text(
                "${Provider.of<ChangeNotifierProviderclass>(context).pobj!.price}"),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    Provider.of<ChangeNotifierProviderclass>(context,
                            listen: false)
                        .addquntitiy();
                  },
                ),
                Text(
                    "${Provider.of<ChangeNotifierProviderclass>(context).pobj!.quantity}"),
                    
              ],
            ),
            GestureDetector(
                onTap: () {
                  Provider.of<ChangeNotifierProviderclass>(context,
                          listen: false)
                      .addFavourite();
                },
                child: Provider.of<ChangeNotifierProviderclass>(
                  context,
                ).pobj!.isfavourite
                    ? const Icon(
                        Icons.favorite_outline,
                      )
                    : const Icon(Icons.favorite))
          ],
        )));
  }
}
