import 'package:flutter/material.dart';
class Fifth extends StatelessWidget {
  const Fifth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title:const Text("Hello Core2web"),
      ),
      body:SingleChildScrollView(
        scrollDirection: Axis.horizontal,
      child:Row(
          children: [
          
                Image.asset(
                  "./myimg/pic2.jpg",
                  height: 150,
                  width: 200,
                
          ),
          const SizedBox(
               height: 20,
                width: 20,
        
          ),
          Image.asset(
                "./myimg/pic1.png",
                 height: 150,
                  width: 200,
               ),

            
          const SizedBox(
                height: 20,
                width: 20,
          ),
           
          
            Image.asset(
              "./myimg/shashisir.png",
              height: 150,
              width: 200,
            ),
          
          const SizedBox(
                height: 20,
                width: 20,
        
          ),
          
          ],
            ),
          
        )
      );
           
  }
}