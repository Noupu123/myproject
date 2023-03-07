import 'package:flutter/material.dart';
class Simpletable extends StatefulWidget {
  const Simpletable({Key? key}) : super(key: key);

  @override
  State<Simpletable> createState() => _SimpletableState();
}

class _SimpletableState extends State<Simpletable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Table"),
      ),
      body: Column(children: [
        Padding(padding: EdgeInsets.all(8.0),
        child:Table(
          textBaseline:TextBaseline.alphabetic,
          defaultColumnWidth:FixedColumnWidth(150.0),
          border:TableBorder.all(color: Colors.blue,width: 1),
    children: [
    TableRow(children: [
    Center(child: Text("Number")),
    Center(child: Text("Model")),
    Center(child: Text("Year")),
    Center(child: Text("Year")),
    ]),
    TableRow(children: [
    Text("1"),
    Text("Roadster"),
    Text("2014"),
    Text("2014"),
    ]),
    TableRow(children: [
    Text("2"),
    Text("E-truck"),
    Text("2021"),
    Text("2021"),
    ]),
    TableRow(children: [
    Text("3"),
    Text("ModelX"),
    Text("2022"),
    Text("2022"),
    ]),
    ],
    ),
    )
    ],
    ),
    );
  }
}

