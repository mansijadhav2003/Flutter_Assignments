import 'package:flutter/material.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Home(),
      
    );
  }
}
class Home extends StatefulWidget{
   const Home({super.key});
  @override
  State createState()=>_Home();
}
class _Home extends State{
  int _java_counter=0;
  int _flutter_counter=0;
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar:AppBar(
          title:const Text("Count"),
        ),
        body:Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          
          children:[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
                ElevatedButton(onPressed: (){
                  setState(() {
                    _java_counter++;
                  });
                }, 
                child: const Text("Java")),
                
                Container(
                  height: 20,
                  width: 20,
                  
                  child: Text('$_java_counter'),
                )
              ]
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
                ElevatedButton(onPressed: (){
                  setState(() {
                    _flutter_counter++;
                  });
                }, 
                child: const Text("Flutter")),
                
                Container(
                  height: 20,
                  width: 20,
                  
                  child: Text('$_flutter_counter'),
                )
              ]
            )
          ]
        )
    );
  }
}