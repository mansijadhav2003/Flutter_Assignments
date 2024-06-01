import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ToDoApp(),
    );
  }
}
class ToDoApp extends StatefulWidget {
  const ToDoApp({super.key});

  @override
  State<ToDoApp> createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoApp> {
  List dolist = [];
  final TextEditingController _titleTextEditingController =
      TextEditingController();
  final TextEditingController _descriptionTextEditingController =
      TextEditingController();
  final TextEditingController _dateTextEditingController =
      TextEditingController();
  List cardcolorlist = const [
    Color.fromRGBO(250, 232, 232, 1),
    Color.fromRGBO(232, 237, 250, 1),
    Color.fromRGBO(250, 249, 232, 1),
    Color.fromRGBO(250, 232, 250, 1),
  ];

  void showBottomSheet() {
    showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: const Color.fromRGBO(248, 248, 248, 1),
        context: context,
        builder: (BuildContext context) {
          return Padding(
            padding: MediaQuery.of(context).viewInsets,
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              Text(
                "Create Task",
                style: GoogleFonts.quicksand(
                    fontSize: 22, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 20,
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  "Title",
                  style: GoogleFonts.quicksand(
                    color: const Color.fromRGBO(0, 139, 148, 1),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextField(
                  controller: _titleTextEditingController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Description",
                  style: GoogleFonts.quicksand(
                    color: const Color.fromRGBO(0, 139, 148, 1),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextField(
                  controller: _descriptionTextEditingController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Date",
                  style: GoogleFonts.quicksand(
                    color: const Color.fromRGBO(0, 139, 148, 1),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextField(
                  controller: _dateTextEditingController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      suffixIcon: Icon(Icons.calendar_month_outlined)),
                  readOnly: true,
                  onTap: () async {
                    DateTime? pickedDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2024),
                      lastDate: DateTime(2025),
                    );
                    String formatedDate =
                        DateFormat.yMMMd().format(pickedDate!);

                    setState(() {
                      _dateTextEditingController.text = formatedDate;
                    });
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
              ]),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(2, 167, 176, 1),
                ),
                onPressed: () {
                  if (_titleTextEditingController.text.isEmpty ||
                      _descriptionTextEditingController.text.isEmpty ||
                      _dateTextEditingController.text.isEmpty) {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text("Validation Error"),
                          content: const Text("Please fill in all fields."),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text("OK"),
                            ),
                          ],
                        );
                      },
                    );
                  } else {
                    Navigator.pop(context);
                    dolist.add({
                      'Title': _titleTextEditingController.text,
                      'Description': _descriptionTextEditingController.text,
                      'Date': _dateTextEditingController.text,
                    });
                    _titleTextEditingController.clear();
                    _descriptionTextEditingController.clear();
                    _dateTextEditingController.clear();
                    setState(() {});
                  }
                },
                child: Text(
                  "Submit",
                  style: GoogleFonts.inter(
                    backgroundColor: const Color.fromRGBO(2, 167, 176, 1),
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                ),
              )
            ]),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(2, 167, 176, 1),
        title: const Text(
          "To-Do List",
          style: TextStyle(
              color: Color.fromRGBO(255, 255, 255, 1),
              fontWeight: FontWeight.w600,
              fontSize: 26),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: dolist.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  width: 400,
                  decoration: BoxDecoration(
                      color: cardcolorlist[index % 4],
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.1),
                          offset: Offset(0, 10),
                          blurRadius: 20,
                        )
                      ],
                      border: Border.all(
                        color: const Color.fromRGBO(250, 232, 232, 1),
                      )),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 52,
                            width: 52,
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              borderRadius: BorderRadius.all(
                                Radius.circular(40),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.07),
                                  offset: Offset(0, 0),
                                  blurRadius: 10,
                                ),
                              ],
                            ),
                            child: Image.network(
                              "https://tse1.mm.bing.net/th?id=OIP.3zS5jIVsBpSe5RlEL9QqEwHaHa&pid=Api&P=0&h=180",
                              //"data:image/png;base64,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",
                            ),
                          ),
                          const SizedBox(width: 20),
                          Expanded(
                            child: Column(
                              children: [
                                Text(
                                  dolist[index]['Title'],
                                  style: GoogleFonts.quicksand(
                                    color: const Color.fromRGBO(0, 0, 0, 1),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  dolist[index]['Description'],
                                  style: GoogleFonts.quicksand(
                                    color: const Color.fromRGBO(84, 84, 84, 1),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            dolist[index]['Date'],
                            style: GoogleFonts.quicksand(
                              color: const Color.fromRGBO(132, 132, 132, 1),
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const Spacer(),
                          GestureDetector(
                            child: const Icon(
                              Icons.edit_outlined,
                              color: Color.fromRGBO(0, 139, 148, 1),
                            ),
                            onTap: () {
                              showModalBottomSheet(
                                isScrollControlled: true,
                                backgroundColor:
                                    const Color.fromRGBO(248, 248, 248, 1),
                                context: context,
                                builder: (BuildContext context) {
                                  return Padding(
                                    padding: MediaQuery.of(context).viewInsets,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          "Edit Task",
                                          style: GoogleFonts.quicksand(
                                            fontSize: 22,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        const SizedBox(height: 20),
                                        Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Title",
                                                style: GoogleFonts.quicksand(
                                                  color: const Color.fromRGBO(
                                                      0, 139, 148, 1),
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                              TextField(
                                                controller:
                                                
                                                    _titleTextEditingController,
                                                keyboardType:
                                                    TextInputType.emailAddress,
                                                decoration: const InputDecoration(
                                                    border: OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    10)))),
                                              ),
                                              const SizedBox(
                                                height: 20,
                                              ),
                                              Text(
                                                "Description",
                                                style: GoogleFonts.quicksand(
                                                  color: const Color.fromRGBO(
                                                      0, 139, 148, 1),
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                              TextField(
                                                controller:
                                                    _descriptionTextEditingController,
                                                keyboardType:
                                                    TextInputType.emailAddress,
                                                decoration:
                                                    const InputDecoration(
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                      Radius.circular(10),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 20,
                                              ),
                                              Text(
                                                "Date",
                                                style: GoogleFonts.quicksand(
                                                  color: const Color.fromRGBO(
                                                      0, 139, 148, 1),
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                              TextField(
                                                controller:
                                                    _dateTextEditingController,
                                                keyboardType:
                                                    TextInputType.emailAddress,
                                                decoration: const InputDecoration(
                                                    border: OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    10)
                                                                  )
                                                            ),
                                                    suffixIcon: Icon(Icons
                                                        .calendar_month_outlined)),
                                                readOnly: true,
                                                onTap: () async {
                                                  DateTime? pickedDate =
                                                      await showDatePicker(
                                                    context: context,
                                                    initialDate: DateTime.now(),
                                                    firstDate: DateTime(2024),
                                                    lastDate: DateTime(2025),
                                                  );
                                                  String formatedDate =
                                                      DateFormat.yMMMd()
                                                          .format(pickedDate!);

                                                  setState(() {
                                                    _dateTextEditingController
                                                        .text = formatedDate;
                                                  });
                                                },
                                              ),
                                              const SizedBox(
                                                height: 30,
                                              ),
                                            ]),
                                      ],
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          GestureDetector(
                            child: const Icon(
                              Icons.delete_outlined,
                              color: Color.fromRGBO(0, 139, 148, 1),
                            ),
                            onTap: () {
                              setState(() {
                                dolist.removeAt(index);
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
              ],
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showBottomSheet();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}