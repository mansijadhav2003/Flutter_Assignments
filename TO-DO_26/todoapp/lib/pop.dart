import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:todoapp(),
    );
  }
}
class todoapp extends StatefulWidget {
  const todoapp({super.key});
  @override
  State createState() => _todoappState();
}

class _todoappState extends State {
  final TextEditingController _namesController = TextEditingController();
  final FocusNode _node = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (BuildContext context) {
                  return Container(
                      height: 500,
                      color: Colors.lightBlue.shade100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Create Task",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 24),
                          ),
                          const SizedBox(
                            height: 80,
                          ),
                          TextField(
                            controller: _namesController,
                            focusNode: _node,
                            decoration: InputDecoration(
                              alignLabelWithHint: true,
                              hintText: "Title",
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40),
                                borderSide: BorderSide(
                                  color: Colors.blue.shade700,
                                  style: BorderStyle.solid,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          ElevatedButton(
                              onPressed: () => Navigator.pop(context),
                              child: const Text("Submit")),
                        ],
                      ));
                });
          },
          child: const Icon(Icons.add)),
    );
  }
}
                      
                      
             
            
           