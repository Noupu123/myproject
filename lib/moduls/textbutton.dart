//TextButton
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextButtonScreen extends StatefulWidget {
  const TextButtonScreen({Key? key}) : super(key: key);

  @override
  State<TextButtonScreen> createState() => _TextButtonScreenState();
}

class _TextButtonScreenState extends State<TextButtonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Button"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Text Button"),
              TextButton(onPressed: () {}, child: Text("Text Button")),
              SizedBox(
                height: 10,
              ),
              Text("Text Button with Onpressed"),
              TextButton(
                  onPressed: () {
                    print("Hii, I'm the text Button ");
                  },
                  child: Text("Text Button")),
              SizedBox(
                height: 10,
              ),
              Text("Text Button with Size,Background Color"),
              TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.amber,
                    // fixedSize: Size(10, 10),
                    visualDensity: VisualDensity(horizontal: 4, vertical: 4),
                  ),
                  onPressed: () {},
                  child: Text("Text Button")),
              SizedBox(
                height: 10,
              ),
              Text("TextButton with alignment,foregroundColor,backgroundColor"),
              TextButton(
                  style: TextButton.styleFrom(
                    // alignment: Alignment.topLeft,
                      foregroundColor: Colors.green,
                      backgroundColor: Colors.amber),
                  onPressed: () {},
                  child: Text("Text Button")),
              SizedBox(
                height: 10,
              ),
              Text("TextButton with elevation,shadowColor"),
              TextButton(
                  style: TextButton.styleFrom(
                      foregroundColor: Colors.green,
                      elevation: 20,
                      shadowColor: Colors.purple,
                      backgroundColor: Colors.amber),
                  onPressed: () {},
                  child: Text("Text Button")),
              SizedBox(
                height: 10,
              ),
              Text("TextButton with shape, side, padding "),
              TextButton(
                  style: TextButton.styleFrom(
                    // fixedSize: Size(200, 100),
                      shadowColor: Colors.red,
                      side: BorderSide(
                          width: 2,
                          color: Colors.brown,
                          strokeAlign: StrokeAlign.outside,
                          style: BorderStyle.values[1]),
                      padding: EdgeInsets.all(20),
                      shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: BorderSide(color: Colors.green, width: 2)),
                      foregroundColor: Colors.pink,
                      enableFeedback: true,
                      elevation: 5,
                      animationDuration: Duration(seconds: 5),
                      backgroundColor: Colors.white),
                  onPressed: () {},
                  child: Text(
                    "Text Button",
                    style: TextStyle(color: Colors.black),
                  )),
              SizedBox(
                height: 10,
              ),
              TextButton(
                  style: TextButton.styleFrom(
                      fixedSize: Size(200, 100),
                      shadowColor: Colors.red,
                      side: BorderSide(
                          width: 2,
                          color: Colors.brown,
                          strokeAlign: StrokeAlign.inside,
                          style: BorderStyle.values[1]),
                      padding: EdgeInsets.all(20),
                      shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: BorderSide(color: Colors.green, width: 2)),
                      foregroundColor: Colors.pink,
                      enableFeedback: true,
                      elevation: 5,
                      animationDuration: Duration(seconds: 5),
                      backgroundColor: Colors.white),
                  onPressed: () {},
                  child: Text(
                    "Text Button",
                    style: TextStyle(color: Colors.black),
                  )),
              SizedBox(
                height: 10,
              ),
              TextButton(
                  style: TextButton.styleFrom(
                      fixedSize: Size(200, 100),
                      shadowColor: Colors.red,
                      side: BorderSide(
                          width: 2,
                          color: Colors.brown,
                          strokeAlign: StrokeAlign.inside,
                          style: BorderStyle.values[1]),
                      padding: EdgeInsets.all(20),
                      shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: BorderSide(color: Colors.green, width: 2)),
                      foregroundColor: Colors.pink,
                      enableFeedback: true,
                      elevation: 5,
                      animationDuration: Duration(seconds: 5),
                      backgroundColor: Colors.white),
                  onPressed: () {},
                  child: Text(
                    "Text Button",
                    style: TextStyle(color: Colors.black),
                  )),
              SizedBox(
                height: 10,
              ),
              TextButton(
                  style: TextButton.styleFrom(
                      fixedSize: Size(200, 100),
                      shadowColor: Colors.red,
                      side: BorderSide(
                          width: 2,
                          color: Colors.brown,
                          strokeAlign: StrokeAlign.inside,
                          style: BorderStyle.values[1]),
                      padding: EdgeInsets.all(20),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: BorderSide(color: Colors.green, width: 2)),
                      foregroundColor: Colors.pink,
                      enableFeedback: true,
                      elevation: 5,
                      animationDuration: Duration(seconds: 5),
                      backgroundColor: Colors.white),
                  onPressed: () {},
                  child: Text(
                    "Text Button",
                    style: TextStyle(color: Colors.black),
                  )),
              SizedBox(
                height: 10,
              ),
              Text("Text Button with Button Style Property"),
              TextButton(
                onPressed: () {},
                child: Text("BUtton Style"),
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(Size(200, 100)),

                  animationDuration: Duration(seconds: 10),
                  splashFactory: InkSplash.splashFactory,
                  // splashFactory: InkRipple.splashFactory,
                  // splashFactory: InkSparkle.splashFactory,
                  // splashFactory: NoSplash.splashFactory,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  mouseCursor: MaterialStateProperty.all(MouseCursor.defer),
                  // enableFeedback: true,
                  // overlayColor: MaterialStateProperty.all(Colors.purple),
                  // foregroundColor: MaterialStateProperty.all(Colors.green),
                  // backgroundColor: MaterialStateProperty.all(Colors.brown),
                ),
              ),
              SizedBox(
                height: 90,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
