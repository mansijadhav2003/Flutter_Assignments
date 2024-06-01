import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHome(),
    );
  }
}
@override
class MyHome extends StatefulWidget{
  const MyHome({super.key});
  @override
  State<MyHome> createState(){
    print("createState");
    return  MyHomeState();
  }
}
class MyHomeState extends State<MyHome>{
  int count=0;
  void increment(){
    setState(() {
      count+=1;
    });
  }
  @override
  void initState(){
    print("init");
    count=0;
    super.initState();
  }
  @override
  void didChangeDependencies(){
    print("didchangedependies");
    super.didChangeDependencies();
  }
  @override
  void dispose(){
    print("dispose");
    super.dispose();
  }
  @override
  void deactivate(){
    print("deactivate");
    super.deactivate();
  }
  @override
  Widget build(BuildContext context){
    print("Build");
    return Scaffold(
      appBar: AppBar(
        title: Text("Lifecycle"),
      ),
      body: Container(
        child: ElevatedButton(
          onPressed: increment,
          child: Text("add"),
        ),
      ),
    );
  }
}
  
 