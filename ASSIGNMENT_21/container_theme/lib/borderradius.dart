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
                  height:200,
                  width:200,
                  decoration:BoxDecoration(
                    borderRadius:const BorderRadius.all(
                      Radius.circular(20),
                    ),
                    border:Border.all(
                    color: Colors.yellow,
                    width: 5,
                    ),
              )
          ),
    )
    );
  }
}