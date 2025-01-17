import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: List_container(),
    );
  }
}

// ignore: camel_case_types
class List_container extends StatefulWidget {
  const List_container({super.key});

  @override
  State createState() => _ListObject();
}

class AllData {
  final String title;
  final String info;
  final String date;
  const AllData({required this.title, required this.info, required this.date});
}

class _ListObject extends State {
  bool isTitleEmpty = false;
  bool isDescriptionEmpty = false;
  bool isDateEmpty = false;
  final TextEditingController _titleController = TextEditingController();

  final TextEditingController _infoController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();

  List<AllData> allData = [];

  bool buttonPress = false;
  int itemCount = 0;
  bool isEdit = false;
  int selectIndex = -1;
  bool submit = false;
  List<Color> colorsList = const [
    Color.fromRGBO(250, 232, 232, 1),
    Color.fromRGBO(232, 237, 250, 1),
    Color.fromRGBO(250, 249, 232, 1),
    Color.fromRGBO(224, 176, 224, 1),
  ];

  void _showBottomSheet() {
    if (isEdit == true) {
      AllData selectCard = allData[selectIndex];
      _titleController.text = selectCard.title;
      _infoController.text = selectCard.info;
      _dateController.text = selectCard.date;
    }

    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (BuildContext context) {
          return Padding(
            padding: MediaQuery.of(context).viewInsets,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  "Add Task",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextField(
                  controller: _titleController,
                  decoration: InputDecoration(
                    alignLabelWithHint: true,
                    hintText: "Enter Title",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(
                        color: Colors.black,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
                (isTitleEmpty)
                    ? const Text(
                        "Enter title",
                        style:
                            TextStyle(color: Color.fromARGB(255, 155, 26, 26)),
                      )
                    : const SizedBox(
                        height: 0,
                      ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: _infoController,
                  decoration: InputDecoration(
                    hintText: "Enter Information",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(
                        color: Colors.black,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
                (isTitleEmpty)
                    ? const Text(
                        "Enter Description",
                        style:
                            TextStyle(color: Color.fromARGB(255, 155, 26, 26)),
                      )
                    : const SizedBox(
                        height: 0,
                      ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                    controller: _dateController,
                    decoration: InputDecoration(
                        hintText: "Date ",
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                            color: Colors.black,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        suffixIcon: const Icon(
                          Icons.calendar_month_rounded,
                        )),
                    readOnly: true,
                    onTap: () async {
                      DateTime? pickedDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2023),
                          lastDate: DateTime(2025));
                      String formateDate =
                          DateFormat.yMMMd().format(pickedDate!);

                      setState(() {
                        _dateController.text = formateDate;
                      });
                    }),
                (isTitleEmpty)
                    ? const Text(
                        "Enter Date",
                        style:
                            TextStyle(color: Color.fromARGB(255, 194, 31, 31)),
                      )
                    : const SizedBox(
                        height: 0,
                      ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                        Color.fromARGB(255, 10, 97, 43)),
                    foregroundColor: MaterialStatePropertyAll(Colors.white),
                  ),
                  onPressed: () {
                    if ((_titleController.text).trim().isEmpty ||
                        (_infoController.text).trim().isEmpty ||
                        (_dateController.text).trim().isEmpty) {
                      if ((_titleController.text).trim().isEmpty) {
                        isTitleEmpty = true;
                      } else {
                        isTitleEmpty = false;
                      }
                      if ((_infoController.text).trim().isEmpty) {
                        isDescriptionEmpty = true;
                      } else {
                        isDescriptionEmpty = false;
                      }
                      if ((_dateController.text).trim().isEmpty) {
                        isDateEmpty = true;
                      } else {
                        isDateEmpty = false;
                      }
                      setState(() {});
                    } else {
                      setState(() {
                        if (isEdit) {
                          allData[selectIndex] = AllData(
                            title: _titleController.text,
                            info: _infoController.text,
                            date: _dateController.text,
                          );
                        } else {
                          allData.add(
                            AllData(
                              title: _titleController.text,
                              info: _infoController.text,
                              date: _dateController.text,
                            ),
                          );
                        }

                        selectIndex = -1;
                        isEdit = false;
                        _titleController.clear();
                        _infoController.clear();
                        _dateController.clear();
                        Navigator.pop(context);
                      });
                    }
                  },
                  child: const Text(
                    "Submit",
                  ),
                ),
              ],
            ),
          );
        });
    setState(() {
      buttonPress = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "To-do List",
          style: GoogleFonts.quicksand(
            fontWeight: FontWeight.w700,
            fontSize: 26,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 32, 128, 118),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showBottomSheet();
          isTitleEmpty = false;
          isDescriptionEmpty = false;
          isDateEmpty = false;
        },
        child: const Icon(
          Icons.add,
         // color: Color.fromARGB(255, 32, 128, 118),
        ),
      ),
      body: buttonPress
          ? Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 30.0, horizontal: 10.0),
              child: ListView.builder(
                  itemCount: allData.length,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 330,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: colorsList[index % colorsList.length],
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0, 10),
                            blurRadius: 8,
                          ),
                        ],
                      ),
                      margin: const EdgeInsets.all(10),
                      child: Column(children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 7,
                                  ),
                                  Container(
                                    height: 72,
                                    width: 75,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                    ),
                                    child: Image.network(
                                      "https://tse4.mm.bing.net/th?id=OIP.Cgdk8VcZ0LZd0ZqZCvwqDgAAAA&pid=Api&P=0&h=180",
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: Column(children: [
                                Text(
                                  allData[index].title,
                                  style: GoogleFonts.quicksand(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  allData[index].info,
                                  style: GoogleFonts.quicksand(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400),
                                ),
                              ]),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(allData[index].date),
                            const Spacer(),
                            IconButton(
                              onPressed: () {
                                isEdit = true;
                                selectIndex = index;
                                _showBottomSheet();
                              },
                              icon: const Icon(
                                Icons.edit,
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  allData.removeAt(index);
                                });
                              },
                              icon: const Icon(
                                Icons.delete,
                              ),
                            ),
                          ],
                        )
                      ]),
                    );
                  }),
            )
          : const SizedBox(
              height: 300,
            ),
    );
  }
}