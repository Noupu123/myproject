import 'package:flutter/material.dart';

class Constrainscreen extends StatefulWidget {
  const Constrainscreen({Key? key}) : super(key: key);

  @override
  State<Constrainscreen> createState() => _ConstrainscreenState();
}

class _ConstrainscreenState extends State<Constrainscreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body:SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
        children:[
          ConstrainedBox(
    constraints:BoxConstraints(maxHeight:20,maxWidth:20),
          child: Text(
            'Walking on the street at night can be very dangerous, especially if you wear dark clothes. Car driverscan’t see you very well, just like these two I had to take home. Luckily I never go out without myreflective jacket and collar. Remember, BE SEEN!',
            style: TextStyle(fontSize: 15),
    ),
    ),
    SizedBox(
    height: 10,
    ),
      ConstrainedBox(
        constraints: BoxConstraints(maxHeight: 100,maxWidth: 100,),
          child: Text(
            'Walking on the street at night can be very dangerous, especially if you wear dark clothes. Car driverscan’t see you very well, just like these two I had to take home. Luckily I never go out without myreflective jacket and collar. Remember, BE SEEN!',
            style: TextStyle(fontSize: 15),
          ), ),
        SizedBox(
          height: 10,
        ),
        ConstrainedBox(
            constraints:BoxConstraints.expand(height: 300,width: 300),
          child: Text(
            'Walking on the street at night can be very dangerous, especially if you wear dark clothes. Car driverscan’t see you very well, just like these two I had to take home. Luckily I never go out without myreflective jacket and collar. Remember, BE SEEN!',
            style: TextStyle(fontSize: 15),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        ConstrainedBox(
          constraints: BoxConstraints.expand(height: 100, width: 100),
          child: Text(
            'Walking on the street at night can be very dangerous, especially if you wear dark clothes. Car driverscan’t see you very well, just like these two I had to take home. Luckily I never go out without myreflective jacket and collar. Remember, BE SEEN!',
            style: TextStyle(fontSize: 15),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        ConstrainedBox(
          constraints: BoxConstraints.expand(height: 100, width: 100),
          child: Text(
            "Hello",
            style: TextStyle(fontSize: 15),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        ConstrainedBox(
          constraints: BoxConstraints(maxHeight: 100, maxWidth: 100),
          child: Text(
            "Hello Hello Hello Hello Hello Hello Hello Hello  ",
            style: TextStyle(fontSize: 15),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        ConstrainedBox(
            constraints: BoxConstraints.expand(height: 400, width: 400),
            child: Image.network(
                "https://media.gettyimages.com/id/1246464390/photo/the-lovely-vidhan-soudha.jpg?s=1024x1024&w=gi&k=20&c=r_-Es1fencYZZxAWJNQ9s35JBgCUVjiZuDCpJhC5MUM=")),
        ],
      ),
    ),
    ),
    );
  }
}
