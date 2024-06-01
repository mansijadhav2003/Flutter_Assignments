

import 'package:flutter/material.dart';
import 'main.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:Login(),
    );
  }
}
class Login extends StatefulWidget{
   @override
 
  State createState() {
    return _Login();
  }
}
class _Login extends State{
  TextEditingController usename=TextEditingController();
  TextEditingController password=TextEditingController();
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: usename,
            decoration: InputDecoration(
              label: Text("Enter username"),
               border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10)
                )
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            controller: password,
            decoration: InputDecoration(
                label: Text("Enter password"),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10)
                )
            ),
            
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(onPressed: (){
            
                
                   
                   Navigator.push(context, MaterialPageRoute(builder: (context) => ToDo(),));
                 
              
          }, 
          child: Text("LOGIN")),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            ElevatedButton(onPressed: (){

            }, child: Text("Create")),
            ElevatedButton(onPressed: (){

            }, child: Text("Update")),
            ElevatedButton(onPressed: (){

            }, child: Text("Delete"))
            
          ],),
           
        ],
      ),
      
    );
  }
}
class ToDo extends StatefulWidget{
	 const ToDo({super.key});
	 @override
   State createState()=>_ToDo();
}
class _ToDo extends State{
	TextEditingController task=TextEditingController();
	bool addtaskscreen=false;
	List<String> tasklist=[];
	@override
	Widget build(BuildContext context){
		if(addtaskscreen==false){
		return Scaffold(
			appBar:AppBar(
				title:const Text("To Do App"),
				centerTitle:true,
			),
			body: ListView.builder(
      itemBuilder: (context, index) {
                    return Container(
                      width: 900,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                        child:Column(
						children:[
							Row(
								children:[
									Text("Add task"),
								]
							),
							const SizedBox(
								height:10,
							),
							Row(
								children:[
									ElevatedButton(
						
									onPressed: () {  },
                                    child:const Icon(Icons.delete),
                  ),
								]
							)
						]
						)
					);
					}
				),
        floatingActionButton: FloatingActionButton(
        onPressed: () {
          addtaskscreen=true;
        },
        child: const Icon(
          Icons.add,
         // color: Color.fromARGB(255, 32, 128, 118),
        )
        )
    );
		
			
       
		}else{
			return Scaffold(
				appBar:AppBar(
				title:const Text("To Do App"),
				centerTitle:true,
				),
				body:Column(
					mainAxisAlignment:MainAxisAlignment.center,

					children:[
					TextField(
					controller:task,
					decoration: const InputDecoration(
            label: Text("Add task")
          ),
					),
					ElevatedButton(
						onPressed:(){
							setState(){
								//tasklist.add(task);
								addtaskscreen=false;
							}
						},
						child:const Text("Submit"),
					),
				]
				),
      );
		}
	}
}