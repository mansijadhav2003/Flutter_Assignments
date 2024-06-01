import 'package:fluttter/material.dart';
void main(){
	runApp(const MyApp());
}
class MyApp extends StatelessWidget{
	const MyApp({super.key});
	@override
	Widget build(BuildContext context){
		return MaterialApp(
			debugShowCheckedModeBanner:false,
			home:ToDo();
		}
	}
}
class ToDo extends StatefulWidget{
	 ToDo({super.key});
	 State createState=>_ToDo();
}
class _ToDo extends State{
	TextEditingController task=TextEditingController();
	bool addtaskscreen=false;
	List<String> tasklist=[],
	@override
	Widget build(BuildContext context){
		if(addtaskscreen==false){
		return Scaffold(
			appBar:AppBar(
				title:Text("To Do App"),
				centerTitle:true,
			),
			body:ListView.builder(
				itemcount:tasklist.length;
				itembuilder(BuildContext context,(i)){
				return Container(
			
					height:70,
					width:600,
					decoration:BoxDecoration(
						color:Colors.purpleAccent,
						//border:Border(circular.all(10)),
					),
					child:Column(
						children:[
							Row(
								children:[
									Text("$tasklist[i]"),
								]
							),
							SizedBox(
								height:10,
							),
							Row(
								children:[
									ElevatedButton(
										onPressed(){
											setState(){
											tasklist.delete(i),
										}
									},
									child:Icon(Icons.delete),
								]
							)
						]
						)
					)
					}
				),
			)
			floatingActionbutton:FloatingActionButton(
				onPressed:(){
					setState(){
						addtaskScreen=true;
					},
					),
				}
				child:Text("Add task"),
			),
		}else{
			return Scaffold(
				appBar:AppBar(
				title:Text("To Do App"),
				centerTitle:true,
				),
				body:Column(
					mainAxisAlignment:MainAxisAlignment.center,

					children:[
					Textfield(
					controller:task,
					inputdecoration:InputDecoration(
						label:Text("Add task"),
					),
					),
					ElevatedButton(
						onPressed:(){
							setState(){
								tasklist.add(task),
								addtaskScreen=false;
							}
						},
						child:Text("Submit"),
					),
				]
				),
		}
	}
}