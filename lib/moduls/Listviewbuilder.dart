import 'package:flutter/material.dart';

class Listviewbuilder extends StatefulWidget {
  const Listviewbuilder({Key? key}) : super(key: key);

  @override
  State<Listviewbuilder> createState() => _ListviewbuilderState();
}

class _ListviewbuilderState extends State<Listviewbuilder> {
  List num = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
  ];
  List name = [
    [
      "noupu",
      Colors.red,
      Icon(Icons.ac_unit_outlined),
    ],
    ["noufal", Colors.purple, Icon(Icons.abc_outlined)],
    ["kanyana", Colors.brown, Icon(Icons.add_chart_rounded)],
    ["karnataka", Colors.orange, Icon(Icons.add_alert)],
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listview.builder"),
        centerTitle: true,
      ),
      //Fetching Nested List
      body: ListView.builder(
          itemCount: name.length,
          //  scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              width: 200,
              margin: EdgeInsets.all(10),
              child: ListTile(
                leading: name[index][2],
                title: Text(name[index][0]),
                tileColor: name[index][1],
              ),
            );
          }),
      //List data fetch
      /*   ListView.builder(
            itemCount: num.length,
            itemBuilder: (BuildContext context, int index) {
              return Text(num[index].toString());
            }),*/
    );
  }
}

@override
Widget build(BuildContext context) {
  return Scaffold();
}
