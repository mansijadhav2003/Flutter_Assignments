import 'package:flutter/material.dart';

//import 'package:image_app/post_card.dart';
//import 'package:instagram_home_page/';
class Assignment8 extends StatefulWidget {
  const Assignment8({super.key});
  @override
  State<Assignment8> createState() => _Assignment8State();
}

class _Assignment8State extends State<Assignment8> {
  bool _like1 = false;
  bool _like2 = false;
  bool _like3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Instagram",
          style: TextStyle(
            fontStyle: FontStyle.italic,
            color: Colors.black,
            fontSize: 30,
          ),
        ),
        actions: const [
          Icon(
            Icons.favorite_rounded,
            color: Colors.red,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  //color: Colors.amber,
                  child: Image.network(
                    "https://tse1.mm.bing.net/th?id=OIP.NA0uwz-ikxFPg56FD31lVQHaDj&pid=Api&P=0&h=180",
                    width: double.infinity,
                    //height : 200,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          setState(() {
                            _like1 = !_like1;
                          });
                        },
                        icon: _like1
                            ? const Icon(
                                Icons.favorite_rounded,
                                color: Colors.red,
                                //IconButton : _like1 ? Icons.favorite_outline_outlined : Icons.favorite_rounded,
                              )
                            : const Icon(Icons.favorite_outline_outlined)),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.comment_outlined,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.send),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.bookmark_add_outlined),
                    ),
                  ],
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  //color: Colors.amber,
                  child: Image.network(
                    "https://tse1.mm.bing.net/th?id=OIP.5rHJf7QWh2i9mGPLkQwHcgHaEK&pid=Api&P=0&h=180",
                    width: double.infinity,
                    // height : 200,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          _like2 = !_like2;
                        });
                      },
                      icon: Icon(
                        _like2
                            ? Icons.favorite_rounded
                            : Icons.favorite_outline_outlined,
                        color: _like2 ? Colors.red : Colors.black,
                        //Icons.favorite_outline_outlined,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.comment_outlined,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.send),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.bookmark_add_outlined),
                    ),
                  ],
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  //color: Colors.amber,
                  child: Image.network(
                    "https://tse3.mm.bing.net/th?id=OIP.chm9ucEu0QOepXgC6f2JRgHaEK&pid=Api&P=0&h=180",
                    width: double.infinity,
                    //height : 200,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          _like3 = !_like3;
                        });
                      },
                      icon: Icon(
                        _like3
                            ? Icons.favorite_rounded
                            : Icons.favorite_outline_outlined,
                        color: _like3 ? Colors.red : Colors.black,
                        //Icons.favorite_outline_outlined,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.comment_outlined,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.send),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.bookmark_add_outlined),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
