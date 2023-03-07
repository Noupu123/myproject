import 'package:flutter/material.dart';
class Nmm extends StatefulWidget {
  const Nmm({Key? key}) : super(key: key);

  @override
  State<Nmm> createState() => _NmmState();
}

class _NmmState extends State<Nmm> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(backgroundColor:Color(0xff0087b8),
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text("educom.",textScaleFactor: 4,style: TextStyle(fontWeight: FontWeight.bold),),
          )
        ],
      ),
    ));
  }
}
