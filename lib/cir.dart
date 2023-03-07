//Circle Progress Indicator/Linear Progress Indicator
import 'package:flutter/material.dart';

class IndicatorScreen extends StatefulWidget {
  const IndicatorScreen({Key? key}) : super(key: key);

  @override
  State<IndicatorScreen> createState() => _IndicatorScreenState();
}

class _IndicatorScreenState extends State<IndicatorScreen> {
  bool cir = true;
  bool lenier = true;
  @override
  initState(){
    super.initState();
    getData();
  }
  Future<void> getData()async{
    cir = true;
    //Geting a firebase data

    cir = false;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          cir == true ? CircularProgressIndicator(color: Colors.red,strokeWidth: 5,) : Text("Finished"),
          TextButton(
              onPressed: () {
                setState(() {
                  cir = !cir;
                });
              },
              child: Text("Stop")),
          lenier == true ? LinearProgressIndicator(color: Colors.black,) : Text("Finished"),
          TextButton(
              onPressed: () {
                setState(() {
                  lenier = !lenier;
                });
              },
              child: Text("Stop")),
        ],
      ),
    );
  }
}
