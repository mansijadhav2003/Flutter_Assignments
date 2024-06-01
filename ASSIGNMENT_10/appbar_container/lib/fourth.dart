import 'package:flutter/material.dart';



class Fourth extends StatelessWidget {
  const Fourth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title:const Text("Hello Core2web"),
      ),
      body:Center(
      child:Row(
        mainAxisAlignment:MainAxisAlignment.center,

        children:[
          Container(
        
                width:360,
                height: 200,
                color: Colors.black,

          ),
          const SizedBox(
                height: 20,
                width: 20,
        
          ),
          Container(
        
                width:360,
                height: 200,
                color: Colors.cyan,

            ),

          ],
        )
      )

    );    
  }
}