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
        body:Container(
                   margin:const EdgeInsets.only(
                     left:10,
                     right:10,
                     top:10,
                     bottom:10,
                   ),
                   color:  Colors.blue,
                   height:200,
                    width:200,
              )
          ),
        
    );
  }
}