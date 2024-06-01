import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List sem = [
    'sem1',
    'sem2',
    'sem1',
    'sem2',
    'sem1',
    'sem2',
    'sem1',
  ];
  List marks = [
    '9.7',
    '8,9',
    '8.8',
    '8.91',
    '9,32',
    '9,42',
    '9,0',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("PORTFOLIO"),
          actions: const [
            Icon(
              Icons.favorite_rounded,
              color: Colors.red,
            ),
            Icon(
              Icons.home,
              color: Colors.white,
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {});
          },
          child: const Text("Next"),
        ),
        body:ListView( 
        children:[ Column(
          
          children: [
            Row(

              children: [
                
                Image.asset(
                  "./img/profile.png",
                  height: 150,
                  width: 150,
                ),
                 Text("Mansi Prakash Jadhav \nSkills:C,JAVA,C++,Flutter\nLanguage Speaking:English,Marathi",
                  style: TextStyle(fontSize: 12),),
                
              ],
       ),
       Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                  color: Colors.white,
                  
                  image: DecorationImage(
                    image: NetworkImage("https://directlinedev.com/media/cases/rooney/header/background_1_zM58lsj.wide.jpeg"),
                    
                  ),
                ),
       ),
       
              
            
              Column(
                
                children:[
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: sem.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(sem[index]),
                        subtitle: Text(marks[index]),
                        leading: const CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://tse2.mm.bing.net/th?id=OIP.KS8iPpBe0RWEcYA9iyhFvQHaEp&pid=Api&P=0&h=180")),
                      );
                    }
                    ),
                ],
              
            ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              
              child:Row (children: [
              
               Image.network("https://tse3.mm.bing.net/th?id=OIP.F8sbdhyjytYUyqmm4S3JAAHaFj&pid=Api&P=0&h=180"),
               SizedBox(
                width: 20,
               ),
               Image.network("https://tse1.mm.bing.net/th?id=OIP.u0U7pNaQ7wPOkaCDpTQD6gHaFj&pid=Api&P=0&h=180"),
                SizedBox(
                width: 20,
               ),
               Image.network("https://tse1.mm.bing.net/th?id=OIP.u0U7pNaQ7wPOkaCDpTQD6gHaFj&pid=Api&P=0&h=180"),
                SizedBox(
                width: 20,
               ),
               Image.network("https://tse3.mm.bing.net/th?id=OIP.Zdu3vdymjn_gzDm-ZVcE8gHaFj&pid=Api&P=0&h=180"),
                SizedBox(
                width: 20,
               ),
               Image.network("https://tse3.mm.bing.net/th?id=OIP.Zdu3vdymjn_gzDm-ZVcE8gHaFj&pid=Api&P=0&h=180"),
                SizedBox(
                width: 20,
               ),
               Image.network("https://tse3.mm.bing.net/th?id=OIP.Zdu3vdymjn_gzDm-ZVcE8gHaFj&pid=Api&P=0&h=180"),
                SizedBox(
                width: 20,
               ),
               Image.network("https://tse3.mm.bing.net/th?id=OIP.Zdu3vdymjn_gzDm-ZVcE8gHaFj&pid=Api&P=0&h=180"),
                  
              ],
                
              ),
            ),
          ],
        ), 
        ],
        ),
            );
                 
        
    
                 
  }
}
