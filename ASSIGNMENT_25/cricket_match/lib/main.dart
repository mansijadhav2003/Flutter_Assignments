import 'package:flutter/material.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
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
        List<String> Test=["https://tse3.mm.bing.net/th?id=OIP.n9zT-g19L7NkgRrQSZoFSwHaFj&pid=Api&P=0&h=180",
        "https://tse3.mm.bing.net/th?id=OIP.DCFfFy69rtJ9g5oVc3dJyQHaEo&pid=Api&P=0&h=180",
        "https://tse1.mm.bing.net/th?id=OIP.z6EEJaHKfcmPxDMKbP5MzQHaEQ&pid=Api&P=0&h=180"];
          List<String> oneday=["https://tse3.mm.bing.net/th?id=OIP.n9zT-g19L7NkgRrQSZoFSwHaFj&pid=Api&P=0&h=180",
        "https://tse3.mm.bing.net/th?id=OIP.n9zT-g19L7NkgRrQSZoFSwHaFj&pid=Api&P=0&h=180",
        "https://tse3.mm.bing.net/th?id=OIP.n9zT-g19L7NkgRrQSZoFSwHaFj&pid=Api&P=0&h=180"];
          List<String> TT=["https://tse3.mm.bing.net/th?id=OIP.n9zT-g19L7NkgRrQSZoFSwHaFj&pid=Api&P=0&h=180",
        "https://tse3.mm.bing.net/th?id=OIP.n9zT-g19L7NkgRrQSZoFSwHaFj&pid=Api&P=0&h=180",
        "https://tse3.mm.bing.net/th?id=OIP.n9zT-g19L7NkgRrQSZoFSwHaFj&pid=Api&P=0&h=180"];
        @override
        Widget build(BuildContext context){
          return Scaffold(
            appBar: AppBar(
              title: Text("Cricket Match"),
            ),
            body: SingleChildScrollView(
              child:Column (
                children: [
                Container(
                  child:ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: Test.length,
                    itemBuilder:(BuildContext context,int index){
                      return Container(
                        height: 200,
                        width: 200,
                        margin: const EdgeInsets.all(10),
                        child: Image.network(Test[index],height: 200,width: 200,),
                      );
                    }
                  ),
                ),
                  const Divider(
                          height: 20,
                          thickness: 5,
                          indent: 20,
                          endIndent: 0,
                          color: Colors.black,
                  ),
                   ListView.builder(
                    shrinkWrap: true,
                    itemCount: Test.length,
                    itemBuilder:(BuildContext context,int index){
                      return Container(
                        height: 200,
                        width: 200,
                        margin: const EdgeInsets.all(10),
                      
                        child: Image.network(oneday[index],height: 200,width: 200,),
                    
                      );
                    },
                  ),
                  const Divider(
                        height: 20,
                        thickness: 5,
                        indent: 20,
                        endIndent: 0,
                        color: Colors.black,
                  ),
                   ListView.builder(
                    shrinkWrap: true,
                    itemCount: Test.length,
                    itemBuilder:(BuildContext context,int index){
                      return Container(
                        height: 200,
                        width: 200,
                        margin: const EdgeInsets.all(10),
                        child: Image.network(TT[index],height: 200,width: 200,),
                      
                    
                      );
                    },
                  ),
                ]
                ),
            )
          );
        }
}
