import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'login.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
//  runApp(MyApp());
}

//class MyApp extends StatefulWidget {
  //const MyApp({Key? key}) : super(key: key);

  @override
  //_MyAppState createState() => _MyAppState();
//}_MyAppState

//class  extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'chat',
        theme: ThemeData(
          // primaryColor: Colors.orange[900],
        ),
        home: Home(),
        debugShowCheckedModeBanner: false,
        );
    }
//}