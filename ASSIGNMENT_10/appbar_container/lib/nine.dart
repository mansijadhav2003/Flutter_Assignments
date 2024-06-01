// ignore: file_names
import 'package:flutter/material.dart';
class Assignment9 extends StatelessWidget {
const Assignment9({super.key});
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
height: 250,
width: 250,
decoration:BoxDecoration(borderRadius:const BorderRadius.all(Radius.circular(20)),
                     color:Colors.red),
alignment: Alignment.center,
child:Image.network("https://static-cse.canva.com/blob/825910/ComposeStunningImages6.jpg",
width: 150,
height: 150,),

),
),
);
}
}