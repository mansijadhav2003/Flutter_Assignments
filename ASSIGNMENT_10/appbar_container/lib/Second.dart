// ignore: file_names
import 'package:flutter/material.dart';



class Second extends StatelessWidget {
  const Second({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title:const Text("center Appbar"),
        centerTitle: true,

        actions: const [
          Icon(
            Icons.favorite_rounded,
            color:Colors.green,
            
          ),
          Icon(
            Icons.home,
            color:Colors.white,
          ),
        ],
      ),
    ) ;

    
  }
}