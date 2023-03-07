import 'package:flutter/material.dart';

class Centre extends StatefulWidget {
  const Centre({Key? key}) : super(key: key);

  @override
  State<Centre> createState() => _CentreState();
}

class _CentreState extends State<Centre> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(
      child: Container(
        // alignment: Alignment.center,
          height: 100,
          width: 100,
          color: Colors.red,
          child: Center(
            child: Text(
              "data",
              // textAlign: TextAlign.center,
            ),
          )),
    ),
    );
  }
}



