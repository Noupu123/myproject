//Hero Animation Two
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Hero(
              tag: "HeroOne",
              child: Icon(
                Icons.image,
                size: 50.0,
                color: Colors.yellow,
              ),
            ),
            ElevatedButton(
              child: Text('Go to second screen'),
              onPressed: () {
                Navigator.push(context, CustomPageRoute(SecondScreen()));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Hero(
                tag: "HeroOne",
                child: Icon(
                  Icons.image,
                  size: 150.0,
                ),
              ),
              ElevatedButton(
                child: Text('Back to first screen!'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          )),
    );
  }
}

class CustomPageRoute<T> extends PageRoute<T> {
  final Widget child;

  CustomPageRoute(this.child);

  @override
  Color get barrierColor => Colors.black;

  @override
  String get barrierLabel => 'wghjs';

  @override
  bool get maintainState => true;

  @override
  Duration get transitionDuration => Duration(seconds: 2);

  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    return SizeTransition(
      // opacity: animation,
      sizeFactor: animation,
      child: child,
    );
  }
}
