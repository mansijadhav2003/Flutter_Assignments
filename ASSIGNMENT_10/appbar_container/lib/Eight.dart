// ignore: file_names
import 'package:flutter/material.dart';
class Assignment8 extends StatelessWidget {
const Assignment8({super.key});
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
child: Container(
height: 300,
width: 300,
color: Colors.red,
alignment: Alignment.center,
padding: const EdgeInsets.all(20),
margin: const EdgeInsets.all(30),
child:

Image.network("https://static-cse.canva.com/blob/825910/ComposeStunningImages6.jpg",),
),
),
),
);
}
}