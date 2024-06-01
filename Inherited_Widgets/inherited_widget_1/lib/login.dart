import 'package:flutter/material.dart';
void main(){
  runApp(const MyApp());
}



// ignore: must_be_immutable
class SharedData extends InheritedWidget{
   TextEditingController name=TextEditingController();
  TextEditingController id=TextEditingController();
   TextEditingController empuser=TextEditingController();
   TextEditingController skill=TextEditingController();


   SharedData({
    super.key,
    required this.id,
    required this.name,
    required this.empuser,
    required super.child,
    
  });
  static SharedData of(BuildContext context){
    return context.dependOnInheritedWidgetOfExactType<SharedData>()!;
  }
  @override
  bool updateShouldNotify(SharedData oldWidget){
    return true;
  }
}
class AccessdataWidget extends StatelessWidget{
  const AccessdataWidget({super.key});
  @override
  Widget build(BuildContext context){
    return const Row(children: [
       //Text("Current User: ${sharedDataObj.emp.name}"),
      SizedBox(
        width: 20,
      ),
      AccessdataChild(),
    ],);

  }
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return SharedData(
     id:TextEditingController(),
     name:TextEditingController(),
     empuser:TextEditingController(),
 
    
      child:const MaterialApp(
        home: MainApp(),
      )
    );
  }
}
class MainApp extends StatefulWidget{
  const MainApp({super.key});
  @override
  State<MainApp> createState()=>_MainAppState();
}
class _MainAppState extends State<MainApp>{
  TextEditingController name=TextEditingController();
  TextEditingController id=TextEditingController();
   TextEditingController empuser=TextEditingController();
  @override
  Widget build(BuildContext context){
    SharedData sharedDataObj=SharedData.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          
          children: [
             TextField(
              controller: sharedDataObj.id,
              keyboardType: TextInputType.number,
              
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  
                ),
                hintText: "Enter employee id",
              ),
             ),
             const SizedBox(
              height: 20,
             ),
             TextField(
              controller: sharedDataObj.name,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                hintText: "Enter employee name",
              ),
             ),
             const SizedBox(
              height: 20,
             ),
             TextField(
              controller: sharedDataObj.empuser,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                hintText: "Enter employee username",
              ),
             ),
             const SizedBox(
              height: 20,
             ),
             ElevatedButton(
  onPressed: () {
   
  // String id=sharedDataObj.id.text;
  // String name=sharedDataObj.name.text;
   //String empuser=sharedDataObj.empuser.text;
  
    Navigator.push(context, MaterialPageRoute(builder: (context) => const home(
     
    )));
  },
  child: const Text("Submit"),
),

          ],
        ),
      ),
    );
  }
}
class AccessdataChild extends StatelessWidget{
  const AccessdataChild({super.key});
  @override
  Widget build(BuildContext context){
    // ignore: unused_local_variable
    SharedData sharedDataObj=context.dependOnInheritedWidgetOfExactType<SharedData>()!;
    return const Text(
      "",
    );
  }
}
class home extends StatefulWidget{
  const home({super.key});

  @override
  State createState()=>_home();
}
class _home extends State{
   @override
  Widget build(BuildContext context){
    SharedData sharedDataObj=SharedData.of(context);
    
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          children: [
            Text("Employee Id:${sharedDataObj.id.text}",style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),),
             const SizedBox(
              height: 20,
             ),
              Text("Employee name:${sharedDataObj.name.text}",style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),),
               const SizedBox(
              height: 20,
             ),
              Text("Employee username:${sharedDataObj.empuser.text}",style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),),
              const AccessdataWidget(),
          ]
          
        ),
      ),
    );
  }

}