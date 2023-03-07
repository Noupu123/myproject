import 'package:flutter/material.dart';
class Datatable extends StatefulWidget {
  const Datatable({Key? key}) : super(key: key);

  @override
  State<Datatable> createState() => _DatatableState();
}

class _DatatableState extends State<Datatable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data table"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child:DataTable(dividerThickness:3,columns: [
                DataColumn(label: Text('No'),
                ),
                DataColumn(label: Text('Framework'),),
                DataColumn(label: Text('Language'),),
                DataColumn(label: Text('Purpose'),),
              ],
              rows: [
                DataRow(cells:[
                DataCell(Text("1")),
                DataCell(Text("Flutter")),
                DataCell(Text("Dart")),
                DataCell(Text("Android,Ios")),
              ]),
        DataRow(cells:[
          DataCell(Text("2")),
          DataCell(Text("Android")),
          DataCell(Text("Java")),
          DataCell(Text("Android")),
        ]),
        DataRow(cells:[
          DataCell(Text("3")),
          DataCell(Text("Jupiter")),
          DataCell(Text("Python")),
          DataCell(Text("Web")),
        ]),
        DataRow(cells:[
          DataCell(Text("4")),
          DataCell(Text("Laravel")),
          DataCell(Text("Php")),
          DataCell(Text("Server")),
        ]),
        ]),
        ),
        SizedBox(height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(
                columnSpacing: 20,
                dataRowHeight: 20,
                headingRowHeight: 20,
                horizontalMargin: 100,
                border: TableBorder.all(color: Colors.red),
                dataRowColor: MaterialStateProperty.all(Colors.cyan),
                headingRowColor: MaterialStateProperty.all(Colors.cyanAccent),
                columns: [
                  DataColumn(label: Text('No'),),
                  DataColumn(label: Text('Framework'),),
                  DataColumn(label: Text('Language'),),
                  DataColumn(label: Text('Purpose'),),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text("1")),
                    DataCell(Text("Flutter")),
                    DataCell(Text("Dart")),
                    DataCell(Text("Android,IOs")),
                  ]),
                  DataRow(cells:[
                    DataCell(Text("2")),
                    DataCell(Text("Android")),
                    DataCell(Text("Java")),
                    DataCell(Text("Android")),
                  ]),
                  DataRow(cells: [
                    DataCell(Text("3")),
                    DataCell(Text("Jupiter")),
                    DataCell(Text("Python")),
                    DataCell(Text("Web")),
                  ]),
      ])),
        SizedBox(
          height: 20,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: DataTable(
              border: TableBorder.all(color: Colors.red),
              columnSpacing: 20,
              dataRowHeight: 20,
              headingRowHeight: 20,
              dataRowColor: MaterialStateProperty.all(Colors.cyan),
              headingRowColor:
              MaterialStateProperty.all(Colors.orangeAccent),
              dataTextStyle: TextStyle(color: Colors.indigo),
              headingTextStyle: TextStyle(color: Colors.deepOrange),
              horizontalMargin: 20,
              columns: [
                DataColumn(
                  label: Text(''
                      'No'),
                ),
                DataColumn(
                  label: Text('Framwork'),
                ),
                DataColumn(
                  label: Text('Language'),
                ),
                DataColumn(
                  label: Text('Purpose'),
                ),
              ],
              rows: [
                DataRow(cells: [
                  DataCell(Text("1")),
                  DataCell(Text("Flutter")),
                  DataCell(Text("Dart")),
                  DataCell(Text("Android,Ios")),
                ]),
                DataRow(cells: [
                  DataCell(Text("2")),
                  DataCell(Text("Android")),
                  DataCell(Text("Java")),
                  DataCell(Text("Android")),
                ]),
                DataRow(cells: [
                  DataCell(Text("3")),
                  DataCell(Text("Jupiter")),
                  DataCell(Text("Python")),
                  DataCell(Text("Web")),
                ]),
                DataRow(cells: [
                  DataCell(Text("4")),
                  DataCell(Text("Laraval")),
                  DataCell(Text("Php")),
                  DataCell(Text("Server")),
                ]),
              ])
    ),
    ],
    ),
    ),
    );
  }
}
