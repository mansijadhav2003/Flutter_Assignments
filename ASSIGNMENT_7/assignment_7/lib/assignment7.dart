import 'package:flutter/material.dart';

class Assignment7 extends StatefulWidget {
  const Assignment7({super.key});

  @override
  State<Assignment7> createState() => _Assignment7State();
}

class _Assignment7State extends State<Assignment7> {
  int? _count = 0;
  int? _count1 = 0;
  int? _count2 = 0;

  //List of Variables
  final List<int> intList = [123, 22, 44, 56, 79];

  //Palindrome Number
  void _printTableValue() {
    setState(() {
      for (int i = 0; i < intList.length; i++) {
        int N = intList[i];
        int temp = N;
        int rev = 0;
        while (N != 0) {
          int rem = N % 10;
          rev = rev * 10 + rem;
          N = N ~/ 10;
        }
        if (rev == temp) {
          _count = _count! + 1;
        }
      }
    });
  }

  final List<int> intList1 = [153, 22, 44, 56, 79];
  //ArmStrong Number
  void _printTableValue1() {
    setState(() {
      for (int i = 0; i < intList.length; i++) {
        int N = intList1[i];
        int x = 0;
        int temp1 = N;
        int tot = 0;
        int temp2 = N;
        while (temp1 != 0) {
          x++;
          temp1 = temp1 ~/ 10;
        }

        
        while (N != 0) {
          int rem = N % 10;
          int sum = 1;
          for (int i = 0; i < x; i++) {
            sum = sum * rem;
          }

          tot = tot + sum;
          N = N ~/ 10;
        }

        if (tot == temp2) _count1 = _count1! + 1;
      }
    });
  }

  final List<int> intList2 = [145, 22, 44, 56, 79];
  //Strong Number
  void _printTableValue2() {
    setState(() {
      for (int i = 0; i < intList2.length; i++) {
        int N = intList2[i];
        int temp = N;
        int tot = 0;
        while (N != 0) {
          int rem = N % 10;
          int sum = 1;

          for (int i = 1; i <= rem; i++) {
            sum = sum * i;
          }

          tot = tot + sum;
          N = N ~/ 10;
        }

        if (tot == temp) {
          _count2 = _count2! + 1;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Number Series",
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Palindrome Number
            const SizedBox(
              height: 20,
            ),
            Text(
              "$_count",
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: _printTableValue,
              child: const Text("Calculate Palindrome Number"),
            ),

            //ArmStrong Number
            const SizedBox(
              height: 20,
            ),
            Text(
              "$_count1",
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: _printTableValue1,
              child: const Text("Calculate ArmStrong Number"),
            ),

            //Strong Number
            const SizedBox(
              height: 20,
            ),
            Text(
              "$_count2",
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: _printTableValue2,
              child: const Text("Calculate Strong Number"),
            ),

            //Reset
            const SizedBox(
              height: 20,
            ),

            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _count = 0;
                  _count1 = 0;
                  _count2 = 0;
                });
              },
              child: const Text("Reset"),
            ),
          ],
        ),
      ),
    );
  }
}
