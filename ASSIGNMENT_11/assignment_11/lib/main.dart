import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home:Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title:const Text("ASSIGNMENT 11",
          style:TextStyle(
            fontStyle: FontStyle.italic,
            color: Colors.black,
          ),
          ),

          actions: const [
            Icon(Icons.favorite),
            Icon(Icons.notifications),
          ],
        ),
        body:Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
             children:[
              Row( 
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.amber,
                ),

                Container(
                  height: 100,
                  width: 100,
                  color: Colors.green,
                ),
                
                
                  Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
              ],
              ),
              Row(
              
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.cyan,
                ),

                Container(
                  height: 100,
                  width: 100,
                  color: Colors.black,
                ),
                
                
                  Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue,
                ),
              ],
                ),
             ],
        ),
          ),
    );
  }
}
                
                
                
              