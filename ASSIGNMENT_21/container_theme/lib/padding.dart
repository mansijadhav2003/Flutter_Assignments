import 'package:flutter/material.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:Scaffold(
        appBar:AppBar(
          title:const Text("Container"),
        ),
        body:Center( 
            
          
                 child: Container(
                   padding:const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                   ),
                   color:  Colors.blue,     
                    height:300,
                    width:300,
              ),
             ),
          ), 
      
    );
  }
}