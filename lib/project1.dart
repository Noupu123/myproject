import 'package:flutter/material.dart';

class Nss extends StatefulWidget {
  const Nss({Key? key}) : super(key: key);

  @override
  State<Nss> createState() => _NssState();
}

class _NssState extends State<Nss> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xff0087b8),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "educom.",
              textScaleFactor: 4,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 200,
          ),
          Container(
            height: 45,
            width: 280,
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color(0xff1e81b0),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(
                Radius.circular(6),
              ),
            ),
          ),
          Container(
            height: 45,
            width: 280,
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Color(0xffe81b0),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(Radius.circular(6))),
          ),
          Container(
            height: 45,
            width: 200,
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Color(0xff1e81b0),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(Radius.circular(6))),
          )
        ],
      ),
    ));
  }
}
