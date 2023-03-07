
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AddData extends StatefulWidget {
const AddData({Key? key}) : super(key: key);

@override
State<AddData> createState() => _AddDataState();
}

class _AddDataState extends State<AddData> {
TextEditingController namecontroller = TextEditingController();
TextEditingController agecontroller = TextEditingController();
TextEditingController phonecontroller = TextEditingController();
TextEditingController emailcontroller = TextEditingController();
TextEditingController listcontroller = TextEditingController();
var list = [];
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: Text("Add Data"),
),
body: Column(
children: [
TextField(
controller: namecontroller,
),
TextField(
controller: agecontroller,
),
TextField(
controller: phonecontroller,
),
TextField(
controller: emailcontroller,
),
Row(
children: [
SizedBox(
width: 100,
child: TextField(
controller: listcontroller,
),
),
TextButton(
onPressed: () {
if (listcontroller.text.isNotEmpty) {
list.add(listcontroller.text);
listcontroller.clear();
setState(() {});
}
},
child: Text("Add"))
],
),
list.isEmpty
? Container()
    : ListView.builder(
shrinkWrap: true,
itemCount: list.length,
itemBuilder: (BuildContext context, int index) {
return Text(list[index]);
}),
ElevatedButton(
onPressed: () async {
await FirebaseFirestore.instance
    .collection("Details")
    .doc()
    .set({
"n": namecontroller.text,
"a": agecontroller.text,
"p": phonecontroller.text,
"e": emailcontroller.text,
'list': list,
}).then((value) => Navigator.pop(context));
},
child: Text("Add Data"))
],
),
);
}
}
