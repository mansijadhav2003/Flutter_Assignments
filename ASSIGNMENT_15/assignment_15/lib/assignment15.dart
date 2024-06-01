import 'package:flutter/material.dart';

class Assignment15 extends StatefulWidget{
  const Assignment15({super.key});
  @override
  State<Assignment15> createState()=> _Assignment15State();
}
class _Assignment15State extends State<Assignment15>{
  int counter=-1;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("PORTFOLIO"),
        
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:(){
          setState(() {
            counter++;
          });
        },
        child: const Text("Next"),
        ),
        body: Center(child: Column(
            mainAxisAlignment:MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.start,
            
            children: [
              (counter>=0)? const Text("Name: Mansi Prakash Jadhav")
              :Container(),
              (counter>=1)?
              Image.asset("./myimg/profile.png",height: 150, width: 200,)
              :Container(),
              (counter>=2)?
               const Text("College: JSPM Narhe Technical Campus Pune")
              :Container(),
              (counter>=3)?
              Image.network("https://tse4.mm.bing.net/th?id=OIP.cV-BzPf_LuDwTSCoIqDyKQAAAA&pid=Api&P=0&h=180")
              :Container(),
              (counter>=4)?
              const Text("Dream Company: TEKsystems")
              :Container(),
              (counter>=5)?
              Image.network("https://tse2.mm.bing.net/th?id=OIP.IrHoUaUpMoJOjLcxa9pHswHaD3&pid=Api&P=0&h=180")
              :Container(),
                 
              ],
            ),
        ), 
        );
    
  }
}