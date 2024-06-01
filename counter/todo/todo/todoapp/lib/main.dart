import 'package:flutter/material.dart';

/*void main() {
  runApp(const MyApp());
}*/

/*class MyApp extends StatelessWidget{
	const MyApp({super.key});
	@override
	Widget build(BuildContext context){
		return const MaterialApp(
			debugShowCheckedModeBanner:false,
			home:ToDo(),
    );
		}
	}
*/
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