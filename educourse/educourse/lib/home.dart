import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State createState() => _HomeState();
}

class _HomeState extends State {
  final TextEditingController _search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 192, 191, 198),
        appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 192, 191, 198),
            leading: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
            actions: const [
              Icon(
                Icons.notifications,
                color: Colors.black,
              ),
            ]),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Welcome to New",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.normal,
                ),
              ),
              const Text("Educourse",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  )),
              TextField(
                controller: _search,
                decoration: InputDecoration(
                    hintText: "Enter your Keyword",
                    suffixIcon: const Icon(Icons.search),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(color: Colors.black),
                    )),
              ),
              const SizedBox(
                height: 30,
              ),
              Expanded(
                  child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Course for you",
                                style: GoogleFonts.jost(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 17,
                                  color: const Color.fromRGBO(0, 0, 0, 1),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(children: [
                                  Container(
                                      height: 242,
                                      width: 190,
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
                                        children: [
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Container(
                                            child: Column(children: [
                                              Text(
                                                "UX Designer from",
                                                style: GoogleFonts.jost(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 14,
                                                  color: const Color.fromRGBO(
                                                      255, 255, 255, 1),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 2,
                                              ),
                                              Text(
                                                "Scratch",
                                                style: GoogleFonts.jost(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 14,
                                                  color: const Color.fromRGBO(
                                                      255, 255, 255, 1),
                                                ),
                                              ),
                                              Image.asset(
                                                  'assets/7010826_3255307.png'),
                                            ]),
                                          )
                                        ],
                                      )),
                                      SizedBox(
                                        width: 5,
                                      ),
                                  Container(
                                      height: 242,
                                      width: 190,
                                      decoration: BoxDecoration(
                                        gradient: const LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Color.fromRGBO(0, 77, 228, 1),

                                            Color.fromRGBO(1, 47, 135, 1),
                                          ],
                                        ),
                                      ),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Container(
                                            child: Column(children: [
                                              Text(
                                                "UX Designer from",
                                                style: GoogleFonts.jost(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 14,
                                                  color: const Color.fromRGBO(
                                                      255, 255, 255, 1),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 2,
                                              ),
                                              Text(
                                                "Scratch",
                                                style: GoogleFonts.jost(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 14,
                                                  color: const Color.fromRGBO(
                                                      255, 255, 255, 1),
                                                ),
                                              ),
                                              Image.asset(
                                                  'assets/Objects.png'),
                                            ]
                                            ),
                                          ),
                                        ],
                                      ))
                                ]),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Course By Category",
                                  style:GoogleFonts.jost(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 18,
                                                  color: const Color.fromRGBO(
                                                      0, 0, 0, 1),
                                                ),
                                  
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                 Row(children: [
                                    Column(
                                      children: [
                                        Container(
                                          height: 36,
                                          width: 36,
                                           color:const Color.fromRGBO(25, 0, 56, 1),
                                           child: Image.asset("assets/two.png",height: 20,width: 20,),
                                      
                                        ),
                                        
                                        const Text("UI/UX"),
                                        const SizedBox(
                                          width: 30,
                                        ),
                                      ]
                                    ),
                                    const Spacer(
                                      flex: 1,
                                    ),
                                    Column(

                                        children:[
                                        Container(
                                          height: 36,
                                          width: 36,
                                           color:const Color.fromRGBO(25, 0, 56, 1),
                                           child: Image.asset("assets/two.png",height: 20,width: 20,),
                                      
                                        ),
                                        
                                        const Text("UI/UX"),
                                        const SizedBox(
                                          width: 30,
                                        ),
                                        ]
                                    ),
                                    const Spacer(
                                      flex: 1,
                                    ),
                                    Column(
                                      children:[
                                        Container(
                                          height: 36,
                                          width: 36,
                                           color:const Color.fromRGBO(25, 0, 56, 1),
                                           child: Image.asset("assets/two.png",height: 20,width: 20,),
                                      
                                        ),
                                        
                                        const Text("UI/UX"),
                                        
                                      ]
                                    ),
                                    const Spacer(
                                      flex: 1,
                                    ),
                                    Column(
                                      children:[
                                        Container(
                                          height: 36,
                                          width: 36,
                                           color:const Color.fromRGBO(25, 0, 56, 1),
                                           child: Image.asset("assets/two.png",height: 20,width: 20,),
                                      
                                        ),
                                        
                                        const Text("UI/UX"),
                                    
                                        ],
                                        
                                      ),
                                  ],
                                  )
                                ]
                              )
                            ]
                        ),
                      )
                  )
              )
            ]
        )
        );
  }
}
                                      
                                    
             