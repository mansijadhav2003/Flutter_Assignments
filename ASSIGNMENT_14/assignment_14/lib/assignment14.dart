import 'package:flutter/material.dart';

class Assignment14 extends StatefulWidget {
  const Assignment14({super.key});
  @override
  State<Assignment14> createState() => _Assignment14State();
}

class _Assignment14State extends State<Assignment14> {
  int counter = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("INDIA FLAG"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter++;
          });
        },
        child: const Text("Next"),
      ),
      body: Container(
        color: Colors.grey[100],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            (counter >= 0)
                ? Container(
                    height: 500,
                    width: 20,
                    color: Colors.black,
                  )
                : Container(),
            Column(
              children: [
                (counter >= 1)
                    ? Container(
                        height: 80,
                        width: 250,
                        color: Colors.orange,
                      )
                    : Container(),
                (counter >= 2)
                    ? Container(
                        color: Colors.white,
                        width: 250,
                        height: 80,
                        child: (counter >= 3)
                            ? Image.network(
                                "https://tse3.mm.bing.net/th?id=OIP.cH3NLOEfbds8Ws8SbrA0FQHaHa&pid=Api&P=0&h=180")
                            : Container(),
                      )
                    : Container(),
                (counter >= 4)
                    ? Container(
                        height: 80,
                        width: 250,
                        color: Colors.green,
                      )
                    : Container()
              ],
            ),
          ],
        ),
      ),
    );
  }
}
