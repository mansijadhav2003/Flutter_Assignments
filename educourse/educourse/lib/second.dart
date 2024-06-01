import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Course(),
    );
  }
}

class Course extends StatefulWidget {
  const Course({super.key});
  @override
  State createState() => _CourseState();
}

class _CourseState extends State {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding:const EdgeInsets.all(10),
          child: Container(
            height: 400,
            width: 360,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                      colors: [
                           Color.fromRGBO(197, 4, 98, 1),
                          Color.fromRGBO(80, 3, 112, 1),
                     ],
                 ),
               ),
               child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 47,
                  ),
                  Icon(Icons.arrow_left),
                  Container(
                    //height: 160,
                    width: 278,
                    child: Column(
                      children: [
                        Text("UX Designer from \nScratch.",
                        style: GoogleFonts.jost(
                          fontWeight: FontWeight.w500,
                          fontSize: 32,
                          color: const Color.fromRGBO(255, 255, 255, 1),
                          ),
                        ),
                        Text("Basic guideline & tips & tricks for how to\nbecome a UX designer easily",
                        style: GoogleFonts.jost(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: const Color.fromRGBO(255, 255, 255, 1),
                          ),
                        ),
                        
                        SizedBox(
                          height: 10,
                        ),
                        Row(children: [
                         
                              Image.network("https://cdn2.iconfinder.com/data/icons/colored-simple-circle-volume-01/128/circle-flat-general-51851bd79-1024.png",
                              height: 34,
                              width: 34,),
                            
                            
                      
                           Text("Author:",
                             style: GoogleFonts.jost(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: const Color.fromRGBO(190, 154, 197, 1),
                          ),
                        ),
                         Text("Jenny",
                             style: GoogleFonts.jost(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: const Color.fromRGBO(255, 255, 255, 1),
                          ),
                         ),
                          Spacer(
                            flex: 1,
                          ),
                          Text("4.8",
                          style: GoogleFonts.jost(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                             color: const Color.fromRGBO(255, 255, 255, 1),
                          ),),
                          Image.asset("assets/Star 1.png",height: 15,width:15),
                          Text("(20 Review)",
                          style: GoogleFonts.jost(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: const Color.fromRGBO(190, 154, 197, 1),
                          ),),
                        ],
                        ),
                         
                          
                        ],
                      )
                      
                    ),
                    Padding(
                      padding:EdgeInsets.all(10),
                      child: Expanded(
                                
                                  child:Container(
                                      height:500,
                                      width: 450,
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(20),
                                          topRight: Radius.circular(20),
                                        ),
                                        ),
                                      
                                      child:Expanded(
                                      child:ListView.builder(
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        itemCount: 10,
                                        itemBuilder: (context, index) {
                                        return Container(
                                          margin: EdgeInsets.all(5),
                                          height: 70,
                                          width: 300,
                                          child: Row(children: [
                                            Container(
                                              height: 60,
                                              width: 46,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(12),
                                                color: Color.fromRGBO(230, 239, 239, 1),
                                              ),
                                              child:Image.asset("assets/youtube.png")
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Column(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                              
                                              Text("Introduction",
                                              style: GoogleFonts.jost(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 17,
                                              color: const Color.fromRGBO(0, 0, 0, 1),
                                              ),
                                              ),
                                              Text("Lorem Ipsum is simply dummy text ... ",
                                              style: GoogleFonts.jost(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12,
                                              color: const Color.fromRGBO(0, 0, 0, 1),
                                              ),
                                              ),
                                                ]
                                              )
                                          ],
                                          )
                                         
                                          
                                          
                                        );
                                        }
                                  )
                                      )
                                )
                      )
                    )
               
                ] 
        )
           
                     )           )
    );
  }
}
                    

                                
                                        
                                      
                                        
                                        