import 'package:flutter/material.dart';
class Seventh extends StatelessWidget {
  const Seventh({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title:const Text("Hello Core2web"),
      ),
      body:SingleChildScrollView(
        scrollDirection: Axis.horizontal,
      child:Row(
          children: [
          
                Image.network(
                  "https://media.istockphoto.com/id/1323846766/photo/a-beautiful-view-of-dal-lake-in-winter-srinagar-kashmir-india.jpg?s=612x612&w=0&k=20&c=Dp3peie2t-jdLEmqe4W-DD09GACu2Cr-JjHHeB6rpBc=",
                  height: 150,
                  width: 200,
                ),
          
          const SizedBox(
               height: 20,
                width: 20,
        
          ),
    
               Image.network(
                "https://tse2.mm.bing.net/th?id=OIP.UwLdXJeXkclCYqLYEf6EGgHaE8&pid=Api&P=0&h=180",
                 height: 150,
                  width: 200,
               ),

            
          const SizedBox(
                height: 20,
                width: 20,
          ),
           
          
            Image.network(
              "https://tse2.mm.bing.net/th?id=OIP.unrw5RnVrTYI5bgMqlkpugHaEo&pid=Api&P=0&h=180",
              height: 150,
              width: 200,
            ),
          
          const SizedBox(
                height: 20,
                width: 20,
        
          ),
      
        
            Image.network(
              "https://tse3.mm.bing.net/th?id=OIP.LmdQ5pnMem5IOcj5PXyY3AHaEK&pid=Api&P=0&h=180",
              height: 150,
              width: 200,
            ),

            
             const SizedBox(
                height: 20,
                width: 20,
        
          ),
           
          
              Image.network(
              "https://tse3.mm.bing.net/th?id=OIP.LmdQ5pnMem5IOcj5PXyY3AHaEK&pid=Api&P=0&h=180",
              height: 150,
              width: 200,
            ),

          
          const SizedBox(
                height: 20,
                width: 20,
        
          ),
         
          
             

          
          const SizedBox(
                height: 20,
                width: 20,
        
          ),
          

        
                

            
             const SizedBox(
                height: 20,
                width: 20,
        
          ),
             
        
                  Image.network(
              "https://tse3.mm.bing.net/th?id=OIP.LmdQ5pnMem5IOcj5PXyY3AHaEK&pid=Api&P=0&h=180",
              height: 150,
              width: 200,
          ),
          const SizedBox(
                height: 20,
                width: 20,
          ),
             Image.network(
              "https://tse3.mm.bing.net/th?id=OIP.LmdQ5pnMem5IOcj5PXyY3AHaEK&pid=Api&P=0&h=180",
              height: 150,
              width: 200,
            ),
        ],)
      )
     );    
  }
}