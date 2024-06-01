import 'package:flutter/material.dart';

class Assignment6 extends StatefulWidget{
  const Assignment6({super.key});
  
  @override
  State<Assignment6> createState()=>_Assignment6State();
}

class _Assignment6State extends State<Assignment6>{
  int? selectedIndex = 0;
  final List<String> imageList =[
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOrhc4ow8d3xuGVADj05GGb-GEHg7Jb0QWoXcRYcoUnQ&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOrhc4ow8d3xuGVADj05GGb-GEHg7Jb0QWoXcRYcoUnQ&s",
    "https://tse3.mm.bing.net/th?id=OIP.XNTeG4Q3cN_E7T-spTx_GAHaEo&pid=Api&P=0&h=180",
    "https://tse3.mm.bing.net/th?id=OIP.XNTeG4Q3cN_E7T-spTx_GAHaEo&pid=Api&P=0&h=180",
  
    
  ];

  void showNextImage(){
    setState(() {
      selectedIndex = selectedIndex! +1;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Display Image",
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              imageList[selectedIndex! +1],
              width: 300,
              height: 300,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: showNextImage,
              child: const Text(
                "Next",
              ),
            ),
            const SizedBox(
              height:  20,
            ),
            ElevatedButton(
              onPressed: (){
                setState(() {
                  selectedIndex = 0;
                });
              },
              child: const Text(
                "Reset",
              ),
            ),
          ],
        ),
       ),
    );
  }
}
