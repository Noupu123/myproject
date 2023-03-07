import 'package:flutter/material.dart';

class Cardwidget extends StatefulWidget {
  const Cardwidget({Key? key}) : super(key: key);

  @override
  State<Cardwidget> createState() => _CardwidgetState();
}

class _CardwidgetState extends State<Cardwidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.grey,
          body: Center(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 100,width: 200,color: Colors.purpleAccent,
                      alignment: Alignment.center,
                      child: Text("Hii"),
                    ),
                    Card(
                      child: Text("Card Widget Example Hello "),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      child: Card(
                        child: Center(child: Text("Card Widget Example ")),
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      child: Card(
                        color: Colors.yellow,
                        child: Center(
                            child: Text("Card Widget Example: color: Colors.yellow, ")),
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 200,
                      // color: Colors.red,
                      child: Card(
                        margin: EdgeInsets.all(0),
                        color: Colors.yellow,
                        child: Center(child: Text("Card Widget Example ")),
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 200,
                      child: Card(
                        color: Colors.yellow,
                        elevation: 20,
                        child:
                        Center(child: Text("Card Widget Example: elevation: 20, ")),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 100,
                      width: 200,
                      child: Card(
                        color: Colors.yellow,
                        elevation: 20,
                        shadowColor: Colors.red,
                        child: Center(
                            child: Text(
                                "Card Widget Example:  shadowColor: Colors.green, ")),
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 200,
                      child: Card(
                        color: Colors.yellow,
                        elevation: 20,
                        margin: EdgeInsets.all(10),
                        shadowColor: Colors.green,
                        child: Center(
                            child: Text(
                                "Card Widget Example:  margin: EdgeInsets.all(20), ")),
                      ),
                    ),
                    Card(
                      color: Colors.yellow,
                      elevation: 20,
                      margin: EdgeInsets.all(0),
                      shadowColor: Colors.green,
                      child: Center(
                          child: Text("Card Widget Example:margin: EdgeInsets.all(0), ")),
                    ),
                    Card(
                      color: Colors.yellow,
                      elevation: 20,
                      margin: EdgeInsets.all(50),
                      shadowColor: Colors.green,
                      child: Center(
                          child:
                          Text("Card Widget Example: margin: EdgeInsets.all(50), ")),
                    ),
                    Container(
                      child: Card(
                        elevation: 10,
                        shadowColor: Colors.blue,
                        margin: EdgeInsets.all(1),
                        color: Colors.blue,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.yellow, width: 1),
                            borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(20))),
                        child: Center(child: Text("Card Widget Example:  RoundedRectangleBorder(side: BorderSide(color: Colors.yellow, width: 1), borderRadius:BorderRadius.only(topLeft: Radius.circular(20))),")),
                      ),
                    ),
                    Container(
                      height: 150,
                      width: 250,
                      child: Card(
                        elevation: 10,
                        shadowColor: Colors.blue,
                        margin: EdgeInsets.all(1),
                        color: Colors.blue,
                        borderOnForeground: false,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.yellow, width: 5),
                            borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(20))),
                        child: Center(child: Text("Card Widget Example:  RoundedRectangleBorder(side: BorderSide(color: Colors.yellow, width: 1), borderRadius:BorderRadius.only(topLeft: Radius.circular(20))),")),
                      ),
                    ),
                    Container(
                      height: 150,
                      width: 250,

                      child: Card(
                        elevation: 10,
                        shadowColor: Colors.blue,
                        margin: EdgeInsets.all(1),
                        color: Colors.blue,
                        borderOnForeground: true,

                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.yellow, width: 5),
                            borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(20))),
                        child: Center(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Card Widget Example:  RoundedRectangleBorder(side: BorderSide(color: Colors.yellow, width: 1), borderRadius:BorderRadius.only(topLeft: Radius.circular(20))),"),
                        )),
                      ),
                    ),
                    Container(
                      height: 500,width: 500,
                      child: Card(
                        child: Column(children: [
                          Text("Card Widget"),
                          Text("Card Widget"),
                          Text("Card Widget"),
                          Icon(Icons.add),
                          Row(children: [
                            Icon(Icons.add),
                            Icon(Icons.adb),
                            Icon(Icons.face),
                            Icon(Icons.favorite),
                            Icon(Icons.print),
                            Icon(Icons.grid_view_rounded),
                          ],),
                          Image.network("https://media.gettyimages.com/id/1246464390/photo/the-lovely-vidhan-soudha.jpg?s=1024x1024&w=gi&k=20&c=r_-Es1fencYZZxAWJNQ9s35JBgCUVjiZuDCpJhC5MUM=")
                        ],),
                      ),
                    )
                  ],
                ),
              ))),
    );
  }
}

