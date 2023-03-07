import 'package:flutter/material.dart';

class Iconscreen extends StatefulWidget {
  const Iconscreen({Key? key}) : super(key: key);

  @override
  State<Iconscreen> createState() => _IconscreenState();
}

class _IconscreenState extends State<Iconscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Icon(Icons.ac_unit_outlined),
            Icon(Icons.abc_outlined),
            Icon(Icons.adb, color: Colors.green),
            Icon(
              Icons.adb,
              color: Colors.green,
              size: 10,
            ),
            Icon(
              Icons.adb,
              color: Colors.green,
              size: 50,
            ),
            Icon(
              Icons.adb,
              color: Colors.green,
              size: 100,
              shadows: [
                Shadow(
                  offset: Offset(1.0, 1.0),
                  blurRadius: 3.0,
                  color: Colors.red,
                ),
                Shadow(
                  offset: Offset(10.0, 10.0),
                  blurRadius: 3.0,
                  color: Colors.purpleAccent,
                ),
              ],
            ),
            Icon(
              Icons.adb,
              color: Colors.green,
              size: 30,
              shadows: [
                Shadow(
                  offset: Offset(5.0, 5.0),
                  blurRadius: 3.0,
                  color: Colors.green,
                ),
              ],
            ),
            Transform.rotate(
              angle: 90,
              child: Icon(Icons.adb),
            ),
            Transform.rotate(
              angle: 180,
              child: Icon(Icons.adb),
            ),
            SizedBox(
              height: 50,
            ),
            Transform.rotate(
              angle: 0,
              child: Text("Transform"),
            ),
            SizedBox(
              height: 150,
            ),
            Transform.rotate(
              angle: 90,
              child: Text(
                "Transform",
                style: TextStyle(fontSize: 40),
              ),
            ),
            SizedBox(
              height: 150,
            ),
            Transform.rotate(
              angle: 180,
              child: Text(
                "Transform",
                style: TextStyle(fontSize: 40),
              ),
            ),
            SizedBox(
              height: 150,
            ),
            Transform.rotate(
              angle: 270,
              child: Text(
                "Transform",
                style: TextStyle(fontSize: 40),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
