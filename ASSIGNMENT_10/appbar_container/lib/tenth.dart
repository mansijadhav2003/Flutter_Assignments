// ignore: file_names
import 'package:flutter/material.dart';
class Assignment10 extends StatelessWidget {
const Assignment10({super.key});
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: const Text(
"Padding & Margin",
),

),
body: Center(

child: Container(
height: 300,
width: 300,

decoration:BoxDecoration(color:Colors.red,
borderRadius:const BorderRadius.only(
  topRight: Radius.circular(20),
  topLeft:(Radius.circular(20)),
),
),

alignment: Alignment.center,
child:Image.network("https://static-cse.canva.com/blob/825910/ComposeStunningImages6.jpg",
width: 200,
height: 200,),

),
),
);

}
}