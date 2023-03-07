// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:untitled/textbutton.dart';
// import 'package:untitled/uploaDVIDEO.dart';
//
// import 'icon.dart';
// import 'moduls/Expansiontile.dart';
// import 'moduls/Listview.dart';
// import 'moduls/Listviewbuilder.dart';
// import 'moduls/Listviewseparate.dart';
// import 'moduls/annn.dart';
// import 'moduls/cachednetworkimage.dart';
// import 'moduls/camera.dart';
// import 'moduls/datatable.dart';
// import 'moduls/detailscreen1.dart';
// import 'moduls/firebase.dart';
// import 'moduls/firebaseproject.dart';
// import 'moduls/model.dart';
 import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:untitled/shared.dart';
import 'drawer.dart';
import 'icon.dart';
import 'moduls/camera.dart';
import 'moduls/mainpage.dart';
import 'moduls/pdf1.dart';
import 'moduls/pdfscreen.dart';
import 'moduls/radio.dart';
import 'moduls/tabbar.dart';
import 'moduls/textbutton.dart';
// import 'moduls/pprjct.dart';
// import 'moduls/prjcct1.dart';
// import 'moduls/simp;etable.dart';
// import 'moduls/streambuiler.dart';
// import 'moduls/textfield_model.dart';
// import 'moduls/uploadimagefirebase.dart';
// import 'moduls/wrap.dart';
// import 'herodetail.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Poppins",
      ),
      home: Shared_Pref()));
}

class ContainerPage extends StatefulWidget {
  const ContainerPage({Key? key}) : super(key: key);

  @override
  State<ContainerPage> createState() => _ContainerPageState();
}

class _ContainerPageState extends State<ContainerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
