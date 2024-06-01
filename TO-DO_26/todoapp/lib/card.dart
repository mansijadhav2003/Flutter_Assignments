import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:MyHome(),
    );
  }
}
class MyHome extends StatefulWidget{
  const MyHome({super.key});
  @override
  State<MyHome> createState()=>_MyHomeState();
}
class _MyHomeState extends State<MyHome>{
    List<String> hd=["Lorem Ipsum is simply setting industry. ",
    "Lorem Ipsum is simply setting industry. ",
    "Lorem Ipsum is simply setting industry. ",
    "Lorem Ipsum is simply setting industry. "];
     List<String> tt=["Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
    "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
    "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
    "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s"];
  
    List<Color> cc=[ 
      Color.fromRGBO(250, 232, 232, 1),
      Color.fromRGBO(232, 237, 250, 1),
      Color.fromARGB(249, 245, 241, 198),
      Color.fromARGB(248, 243, 248, 174)
      ];
   @override
        Widget build(BuildContext context){
          return Scaffold(
            appBar: AppBar(
              title: const Text("To-do"),
              
            ),
            body:Padding(
              padding:EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
              child: ListView.builder(
                shrinkWrap: true,
                itemBuilder: (BuildContext context,int index){
                  return Container(
                    height: 112,
                    width: 330,
                    color: cc[(index%cc.length)],
                    //padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 15.0),
                    margin: EdgeInsets.only(left: 15.0,top:10),
                  
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                               height: 52,
                              width: 52,
                             // margin: EdgeInsets.only(left: 2.5,top: 12.3),
                             margin: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(255,255,255,1),
                                
                                shape: BoxShape.circle,
                               border: Border.all(
                                  width: 1,
                                  color: const Color.fromRGBO(0, 0, 0, 1),
                                ),

                             ),
                             child:Image.network("https://tse3.mm.bing.net/th?id=OIP.Lv48rKV7Z11QbJgPNeunmAHaHa&pid=Api&P=0&h=180",
                            
                             ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              children: [
                                Row(children: [
                                 Container(
                                  height: 15,
                                  width: 240,
                                  child: Text("Lorem Ipsum is simply setting industry. ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    
                                  ),),
                                 ),
                                 SizedBox(
                                  width: 10,
                                 )
                                ],
                                
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                 Row(children: [
                                  Container(
                                    height: 47,
                                    width: 249,
                                    child:Text("Simply dummy text of the printing and typesetting industry.Lorem Ipsum has been"),
                                  )
                                ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                            children: [
                              Container(
                              child:Text("25 feb 2023"),
                              height: 13,
                            
                              ),
                              Spacer(flex: 1,),
                              Icon(Icons.edit),
                              Icon(Icons.delete_outline),
                            ],
                        )
                      ]),
                  );
                }

              )
            )

                
  
            
          );
  }
}