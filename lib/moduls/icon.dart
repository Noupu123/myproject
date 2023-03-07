//Icon Button
import 'package:flutter/material.dart';

class IconButtonScreen extends StatefulWidget {
  const IconButtonScreen({Key? key}) : super(key: key);

  @override
  State<IconButtonScreen> createState() => _IconButtonScreenState();
}

class _IconButtonScreenState extends State<IconButtonScreen> {
  late FocusNode focusNode = FocusNode()
    ..addListener(() {
      setState(() {});
    });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Icon Button"),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.home),
              ),
              Text("Icon Button with Color"),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.home,
                ),
                color: Colors.purple,
              ),
              Text("Icon Button size"),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.home),
                color: Colors.purple,
                iconSize: 40,
              ),
              Text("Icon Button with Tooltip"),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.home),
                color: Colors.green,
                iconSize: 40,
                tooltip: 'Home',
              ),
              Text("Icon Button with splashColor, splashRadius"),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.home),
                color: Colors.purple,
                iconSize: 40,
                tooltip: 'Home',
                splashColor: Colors.lightBlueAccent,
                splashRadius: 30,
              ),
              Text("Icon Button with highlightColor,padding null,alignment"),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.home),
                color: Colors.purple,
                iconSize: 40,
                tooltip: 'Home',
                splashColor: Colors.lightBlueAccent,
                splashRadius: 30,
                highlightColor: Colors.green,
                // padding: EdgeInsets.all(0),
                alignment: Alignment.topLeft,
              ),
              Text("Icon Button with highlightColor,padding,alignment"),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.home),
                color: Colors.green,
                iconSize: 40,
                tooltip: 'Home',
                splashColor: Colors.lightBlueAccent,
                splashRadius: 30,
                highlightColor: Colors.purple,
                padding: EdgeInsets.all(50),
                alignment: Alignment.topLeft,
              ),
              Text("Icon Button with highlightColor,padding"),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.home),
                color: Colors.purple,
                iconSize: 40,
                tooltip: 'Home',
                splashColor: Colors.lightBlueAccent,
                splashRadius: 30,
                highlightColor: Colors.green,
                padding: EdgeInsets.all(0),
              ),
              Text("Icon Button with focusNode,"),
              TextField(
                focusNode: focusNode,
                decoration: InputDecoration(
                  prefixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.home),
                    color: focusNode.hasFocus ? Colors.purple : Colors.red,
                    splashColor: Colors.lightBlueAccent,
                    splashRadius: 30,
                    highlightColor: Colors.green,
                  ),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.add),
                splashColor: Colors.lightBlueAccent,
                splashRadius: 30,
                highlightColor: Colors.green,
                style: IconButton.styleFrom(
                  backgroundColor: Colors.red,
                  shape: ContinuousRectangleBorder(
                      side: BorderSide(color: Colors.yellow, width: 5),
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
