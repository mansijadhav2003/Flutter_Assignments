// order_confirmation_page.dart

import 'package:flutter/material.dart';
import 'database.dart';

class OrderConfirmationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController addressController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text('Order Confirmation'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.asset('assets/order_confirmation_image.jpg'),
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'Name'),
            ),
            TextField(
              controller: addressController,
              decoration: InputDecoration(labelText: 'Address'),
            ),
            ElevatedButton(
              child: Text('Submit Order'),
              onPressed: () {
                String name = nameController.text;
                String address = addressController.text;
                saveOrderToDatabase(name, address);
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: Text('Order Confirmed!'),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}