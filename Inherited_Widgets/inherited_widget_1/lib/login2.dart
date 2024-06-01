import 'package:flutter/material.dart';
void main(){
  runApp(const MyApp());
}
class Emp{
   int? id;
   String? name;
   String? username;
   Emp({
     this.id,
     this.name,
     this.username,
  });
}
class SharedData extends InheritedWidget {
  final Emp emp;
  
  const SharedData({
    super.key,
    required this.emp,
    required super.child,
    
  }) ;
  static SharedData of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<SharedData>()!;
  }

  @override
  bool updateShouldNotify(SharedData oldWidget) {
    return emp != oldWidget.emp;
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SharedData(
      emp:  Emp(),
      
      child: const MaterialApp(
        home: MainApp(),
      ),
    );
  }
}

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  TextEditingController name = TextEditingController();
  TextEditingController id = TextEditingController();
  TextEditingController empuser = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SharedData sharedDataObj = SharedData.of(context);
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
              controller: id,
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
              controller: name,
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
              controller: empuser,
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
                
               
                sharedDataObj.emp.id=int.parse(id.text);
                sharedDataObj.emp.name=name.text;
                sharedDataObj.emp.username=empuser.text;

                
                Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
              },
              child: const Text("Submit"),
            ),
            //const AccessdataWidget(),
          ],
        ),
      ),
    );
  }
}

class AccessdataWidget extends StatelessWidget {
  const AccessdataWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //Text("Current User: ${sharedDataObj.emp.name}"),
        const SizedBox(
          width: 20,
        ),
        const AccessdataChild(),
      ],
    );
  }
}

class AccessdataChild extends StatelessWidget {
  const AccessdataChild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //SharedData sharedDataObj = SharedData.of(context);
    return const Text(
      "",
    );
  }
}

class Home extends StatefulWidget {
  @override
  State createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    SharedData sharedDataObj = SharedData.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          children: [
            Text("${sharedDataObj.emp.id}"),
            const SizedBox(
              height: 20,
            ),
            Text("${sharedDataObj.emp.name}"),
            const SizedBox(
              height: 20,
            ),
            Text("${sharedDataObj.emp.username}"),
          ],
        ),
      ),
    );
  }
}
