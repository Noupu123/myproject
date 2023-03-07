import 'package:flutter/material.dart';

class Circleavatar extends StatefulWidget {
  const Circleavatar({Key? key}) : super(key: key);

  @override
  State<Circleavatar> createState() => _CircleavatarState();
}

class _CircleavatarState extends State<Circleavatar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircleAvatar(
          backgroundColor: Colors.yellow,
          child: CircleAvatar(
            backgroundImage:AssetImage("assets/32550493.jpg") ,
            radius: 100,
          ),
          backgroundImage: AssetImage("asset/32550493.jpg"),
          //child:CircleAvatar(child: Center(child: Icon(Icons.add)),)
          //radius: 100,,
        ),
      ),
    );
  }
}
