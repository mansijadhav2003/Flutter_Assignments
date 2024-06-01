import 'package:flutter/material.dart';



class Third extends StatelessWidget {
  const Third({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title:const Text("Hello Core2web"),
      ),
      body:Center(
      
      child:Container(
        
        width:360,
        height: 200,
        color: Colors.blue,

      ),
      ),
    ) ;

    
  }
}