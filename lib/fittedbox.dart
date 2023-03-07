//FittedBox
import 'package:flutter/material.dart';

class FittedScreen extends StatelessWidget {
  const FittedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/mmm.jpg'),fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: [
              FittedBox(
                fit: BoxFit.fill,
                child: Text("Hello World"),
              ),
              Text(
                  "Walking on the street at night can be very dangerous, especially if you wear dark clothes. Car driverscan’t see you very well, just like these two I had to take home. Luckily I never go out without myreflective jacket and collar. Remember, BE SEEN"),

              FittedBox(
                fit: BoxFit.fill,
                child:
                Text(
                    "Walking on the street at night can be very dangerous, especially if you wear dark clothes. Car driverscan’t see you very well, just like these two I had to take home. Luckily I never go out without myreflective jacket and collar. Remember, BE SEEN"),
              ),

              FittedBox(
                fit: BoxFit.fill,
                child: Image.network(
                    "https://media.gettyimages.com/id/1246464390/photo/the-lovely-vidhan-soudha.jpg?s=1024x1024&w=gi&k=20&c=r_-Es1fencYZZxAWJNQ9s35JBgCUVjiZuDCpJhC5MUM="),
              ),
              Container(
                height: 200,
                width: 200,
                child: Image.network(
                    "https://media.gettyimages.com/id/1246464390/photo/the-lovely-vidhan-soudha.jpg?s=1024x1024&w=gi&k=20&c=r_-Es1fencYZZxAWJNQ9s35JBgCUVjiZuDCpJhC5MUM="),
              )
            ],
          ),
        ),
      ),
    );
  }
}
