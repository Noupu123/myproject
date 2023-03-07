import 'package:flutter/material.dart';

class Listviewscreen extends StatefulWidget {
  const Listviewscreen({Key? key}) : super(key: key);

  @override
  State<Listviewscreen> createState() => _ListviewscreenState();
}

class _ListviewscreenState extends State<Listviewscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List view"),
      ),
      body: ListView(
        shrinkWrap: false,
        padding: EdgeInsets.all(20),
        reverse: false,
        children: [
          CircleAvatar(
            maxRadius: 50,
            backgroundColor: Colors.transparent,
            child: Image.asset("assets/Google.png"),
          ),
          Center(
            child: Text(
              "Google",
              style: TextStyle(fontSize: 40),
            ),
          ),
          Text(
              "In this essay on technology, we are going to discuss what technology is, what are its uses, and also what technology can do? First of all, technology refers to the use of technical and scientific knowledge to create, monitor, and design machinery. Also, technology helps in making other goods that aid mankind.data")
        ],
      ),
    );
  }
}
