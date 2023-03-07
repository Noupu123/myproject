// import 'package:demoone/moduls/circle.dart';
import 'package:flutter/material.dart';
import 'package:untitled/moduls/textfield_model.dart';

import 'circle.dart';
// import 'package:untitled/moduls/textfield_model.dart';

// import 'circle.dart';
// import 'moduls/textfield_model.dart';

class Modelclass extends StatefulWidget {
  const Modelclass({Key? key}) : super(key: key);

  @override
  State<Modelclass> createState() => _ModelclassState();
}

class _ModelclassState extends State<Modelclass> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: Color(0xffcfe8f1),
            body: Stack(
              children: [
                BackgroundCircle(),
                SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 200,
                        width: MediaQuery.of(context).size.width,
                        child: Stack(
                          children: [
                            Positioned(
                              top: 30,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Hello",
                                    textScaleFactor: 3,
                                    style:
                                    TextStyle(color: Colors.black87, fontSize: 15),
                                  ),
                                  Text(
                                    "become Tutor",
                                    textScaleFactor: 2,
                                    style:
                                    TextStyle(color: Colors.black87, fontSize: 10),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Align(
                                alignment: Alignment.bottomRight,
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 50.0),
                                  child: Image.asset("assets/sli.png"),
                                )),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                margin: EdgeInsets.only(top: 130),
                                child: TextFieldModel(
                                  name: "First Name",
                                  controller: controller1,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      TextFieldModel(
                        name: "Age",
                        controller: controller2,
                      ),
                      TextFieldModel(
                        name: "Email Id / Phone Number",
                        controller: controller1,
                      ),
                      Container(
                        height: 30,
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search),
                            fillColor: Colors.white,
                            filled: true,
                            suffixIcon: Icon(Icons.keyboard_arrow_down_sharp),
                            border: InputBorder.none,
                            disabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.blueAccent)),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: Colors.blueAccent, width: 3),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                BorderSide(color: Colors.black87, width: 1),
                                borderRadius: BorderRadius.all(Radius.circular(10))),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFieldModel(
                        name: "Subject",
                        controller: controller1,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Experience",
                      ),
                      Container(
                        height: 30,
                        child: TextField(
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            suffixIcon: Icon(Icons.keyboard_arrow_down_sharp),
                            border: InputBorder.none,
                            disabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.blueAccent)),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: Colors.blueAccent, width: 3),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                BorderSide(color: Colors.black87, width: 1),
                                borderRadius: BorderRadius.all(Radius.circular(10))),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 180,
                            color: Colors.white,
                            child: Container(
                              height: 30,
                              child: TextField(
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(0),
                                  fillColor: Colors.white,
                                  hintText: "Select class",
                                  filled: true,
                                  suffixIcon: Icon(Icons.keyboard_arrow_down),
                                  border: InputBorder.none,
                                  disabledBorder: OutlineInputBorder(
                                      borderSide:
                                      BorderSide(color: Colors.blueAccent)),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.blueAccent, width: 3),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                      BorderSide(color: Colors.black87, width: 1),
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 40,
                        width: 500,
                        margin: EdgeInsets.all(0),
                        padding: EdgeInsets.all(0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.blueAccent, width: 3),
                          borderRadius: BorderRadius.all(
                            Radius.circular(6),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Upload Institution Id",
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w900),
                            ),
                            Container(
                              height: 30,
                              width: 190,
                              margin: EdgeInsets.all(0),
                              padding: EdgeInsets.all(0),
                              decoration: BoxDecoration(
                                color: Color(0xff1e81b0),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(4),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  "Browse",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w900),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFieldModel(
                        name: "Id Number",
                        controller: controller1,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 40,
                        width: 500,
                        margin: EdgeInsets.all(0),
                        padding: EdgeInsets.all(0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.blueAccent, width: 2),
                          borderRadius: BorderRadius.all(
                            Radius.circular(6),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Upload Institution Id",
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w900),
                            ),
                            Container(
                              height: 30,
                              width: 190,
                              margin: EdgeInsets.all(0),
                              padding: EdgeInsets.all(0),
                              decoration: BoxDecoration(
                                color: Color(0xff1e81b0),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(4),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  "Browse",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w900),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Container(
                          height: 45,
                          width: 250,
                          child: Center(child: Text("Continue")),
                          decoration: BoxDecoration(
                              color: Color(0xff1e81b0),
                              borderRadius: BorderRadius.all(Radius.circular(6))),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ));
    }
}
