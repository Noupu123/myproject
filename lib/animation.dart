import 'package:flutter/material.dart';

class Animation extends StatefulWidget {
  const Animation({Key? key}) : super(key: key);

  @override
  State<Animation> createState() => _AnimationState();
}

class _AnimationState extends State<Animation> {
  get lottie => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.pink[600],
        centerTitle: true,
        title: const Text(
          "Animation",
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 22,
          ),
        ),
      ),
      body: Center(child:lottie.network("https://assets1.lottiefiles.com/packages/lf20_jmejybvu.json"),

      ),
    );
  }
}
