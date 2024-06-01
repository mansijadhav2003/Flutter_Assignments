import 'package:flutter/material.dart';

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Tech Quiz'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.arrow_circle_right),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 40),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Questions : 1/10'),
            const SizedBox(height: 10),
            Text('Question 1 : What is Flutter?'),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {},
              child: Text('OPTION'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {},
              child: Text('OPTION'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {},
              child: Text('OPTION'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {},
              child: Text('OPTION'),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
