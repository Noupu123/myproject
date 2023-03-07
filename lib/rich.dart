import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class RichTextScreen extends StatelessWidget {
  const RichTextScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          RichText(
            text: TextSpan(text: "Hello ", children: [
              TextSpan(
                  text: "World",
                  style: TextStyle(
                      decorationStyle: TextDecorationStyle.dotted,
                      decoration: TextDecoration.underline)),
              TextSpan(
                  text: "!",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.red)),
            ]),
          ),
          RichText(
            textScaleFactor: 1,
            text: TextSpan(
                text: "Sunrule",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                children: [
                  WidgetSpan(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 2.0),
                      child: Icon(
                        Icons.sunny,
                        color: Colors.yellow,
                      ),
                    ),
                  ),
                  TextSpan(
                      text: 'Digital ',
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // open desired screen
                        }),
                  WidgetSpan(
                    child: Container(
                        height: 50,
                        width: 50,
                        child: Image.network(
                            "https://thumbs.dreamstime.com/z/environment-earth-day-hands-trees-growing-seedlings-bokeh-green-background-female-hand-holding-tree-nature-field-gra-130247647.jpg")),
                  ),
                  TextSpan(
                      text: ' Solutions ',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // open desired screen
                        }),
                ]),
          ),
        ],
      ),
    );
  }
}
