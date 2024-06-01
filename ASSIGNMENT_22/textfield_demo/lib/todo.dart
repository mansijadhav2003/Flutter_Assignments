import 'package:flutter/material.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      title: "Text field demo",
      home: MyHomePage(title:'Add Name'),
    );
  }
}
class MyHomePage extends StatefulWidget{
  const MyHomePage({super.key,required this.title});
  final String title;
  @override
  State<MyHomePage> createState()=>_MyHomePageState();

}
class _MyHomePageState extends State<MyHomePage>{
  final TextEditingController _nameextEditingController=TextEditingController();
  final FocusNode _nameFocusNode=FocusNode();
  List<String> _tasks=[];
  void _addtask(String task){
    if(task.length>0){
      setState(() {
        _tasks.add(task);
      });
    }
  }
  Widget _todoitem(String todotask){
    return ListTile(title:Text(todotask),
    );
  }
  Widget _buildtodo(){
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context,index){
          if(index<_tasks.length){
            return _todoitem(_tasks[index]);
          }
        },
    ),
    );
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title:Text(widget.title),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20.0,
          ),
          TextField(
            controller:_nameextEditingController,
            focusNode:_nameFocusNode,
            decoration:InputDecoration(
              hintText: "Enter name",
              border:InputBorder.none,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide:const BorderSide(
                  color:Colors.pink,
                ),
              ),
            ),
            cursorColor:Colors.amber,
            textInputAction:TextInputAction.done,
            keyboardType: TextInputType.name,
            onChanged: (value){
              print("Value= $value");
            },
            onSubmitted: (value){
              _addtask(value);
            },
          ),
          _buildtodo(),
        ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              String name=_nameextEditingController.text;
              if(name.isNotEmpty){
                _tasks.add(name);
                _nameextEditingController.clear();
              }
            });
          },
          child: const Text("ADD"),
        ),
    );
  }
}