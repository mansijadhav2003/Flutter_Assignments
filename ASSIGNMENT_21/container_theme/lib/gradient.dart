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
                    
                    width: 5,
                  ),
                  gradient: const LinearGradient(
                    stops: [0.0,1.0],
                    colors: [Colors.red,Colors.green],
                  )
              )
          ),
        
    )
    );
  }
}