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
                    color:Colors.pink,
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                   border:Border.all(
                    color: Colors.blue,
                    width: 5,
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.orange,offset: Offset(30, 30),blurRadius: 8
                    ),
                     BoxShadow(
                      color: Colors.green,offset: Offset(20, 20),blurRadius: 8
                    ),
                     BoxShadow(
                      color: Colors.purple,offset: Offset(10, 10),blurRadius: 8
                    ),
                  ]
              )
          ),
        
    )
    );
  }
}