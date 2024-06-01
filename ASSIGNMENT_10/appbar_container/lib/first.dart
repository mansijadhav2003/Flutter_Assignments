import 'package:flutter/material.dart';



class First extends StatelessWidget {
  const First({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title:const Text("Appbar1"),
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
