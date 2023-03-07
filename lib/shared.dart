//Shared_Pref
import 'package:flutter/material.dart';
//import 'package:flutter_trainig/Pages/buttons/iconbutton.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled/sharedpage1.dart';

import 'icon.dart';
//import 'json/s_f_page.dart';

class Shared_Pref extends StatefulWidget {
  const Shared_Pref({Key? key}) : super(key: key);

  @override
  State<Shared_Pref> createState() => _Shared_PrefState();
}

class _Shared_PrefState extends State<Shared_Pref> {
  // final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getDate();
    check();
  }

  check() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String? username = preferences.getString("username");
    String? password = preferences.getString("password");
    bool? log = preferences.getBool("logged");
    // if (username! == "kumar1" && password! == "kumar1") {
    //   Navigator.push(
    //       context, MaterialPageRoute(builder: (context) => IconButtonScreen()));
    // } else {
    //   Navigator.push(
    //       context, MaterialPageRoute(builder: (context) => S_Pref()));
    // }
    if (log != true) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => IconButtonScreen()));
    } else {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => S_Pref()));
    }
  }

  getDate() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    var name = preferences.getString("name");
    print(name);
    int? num = preferences.getInt("intigers");
    print(num);
    double? dec = preferences.getDouble("dbl");
    print(dec);
    bool? tf = preferences.getBool("tf");
    print(tf);
    List<String>? list = preferences.getStringList("s_list");
    print(list);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            SharedPreferences preferences =
            await SharedPreferences.getInstance();
            await preferences
                .setString("name", "Kumaresan")
                .then((value) => print("Success"));
            await preferences.setBool("tf", true);
            await preferences.setDouble("dbl", 1.23);
            await preferences.setInt('intigers', 10);
            await preferences.setStringList("s_list", [
              "value",
              "value1",
              "value1",
              "value2",
              "value3",
              "value4",
              "value5",
            ]);
            Navigator.push(
                (context), MaterialPageRoute(builder: (context) => S_Pref()));
          },
          child: Text("Add Data"),
        ),
      ),
    );
  }
}
