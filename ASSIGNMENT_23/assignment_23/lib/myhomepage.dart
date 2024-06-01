import 'package:flutter/material.dart';
class MyHomePage extends StatefulWidget{
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState()=>_MyHomePage();
}
class _MyHomePage extends State<MyHomePage>{
  TextEditingController _nametEditingController=TextEditingController();
   FocusNode _nameFocusNode=FocusNode();
   TextEditingController _compnameEditingController=TextEditingController();
  FocusNode _compnameFocusNode=FocusNode();
   TextEditingController _locEditingController=TextEditingController();
  FocusNode _locFocusNode=FocusNode();
   String? name;
   String? compName;
   String? location;
   bool flag=false;
 
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Portfolio")
      ),
      body:Column(
        children: [
           TextField(
              controller:_nametEditingController,
              focusNode: _nameFocusNode,
              decoration: InputDecoration(
                hintText: "Enter your name",
              ),
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.name,
              onChanged: (Name){
                print("Name=$Name");
              },
              onSubmitted: (val){
                name=val;
              },
             
            ),
             TextField(
              controller:_compnameEditingController,
              focusNode: _compnameFocusNode,
              decoration: InputDecoration(
                hintText: "Enter company name",
              ),
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.name,
              onChanged: (compName){
                print("CompName=$compName");
              },
              onSubmitted: (val){
                compName=val;
              },
             
            ),
             TextField(
              controller:_locEditingController,
              focusNode: _locFocusNode,
              decoration: InputDecoration(
                hintText: "Enter company loction",
              ),
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.name,
              onChanged: (location){
                print("location=$location");
              }, 
                onSubmitted: (val){
                location=val;
              },
            ),
            ElevatedButton(
              onPressed: (){
                setState(() {
                  flag=true;
                });
              },
              
              child:Text("Submit") 
            ),
            flag?Container(
              width: 800,
              height: 150,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    SizedBox(
                      height: 50,
                      child: Text("Name:${_nametEditingController.text}"),
                    ),
                     SizedBox(
                      height: 50,
                      child: Text("Company name:${_compnameEditingController.text}"),
                    ),
                    SizedBox(
                      height: 50,
                      child: Text("Location:${_locEditingController.text}"),
                    ),
              ],
              ),
            ):Container(),
        ],
         ),
         floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _nametEditingController.clear();
              _compnameEditingController.clear();
              _locEditingController.clear();
              flag=false;
            });
          },
          child: const Text("ADD"),
        ),
        
        
        
    );
  }
}

