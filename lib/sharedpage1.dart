//Shared_preff_page 2
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
<<<<<<< HEAD

class S_Pref extends StatefulWidget {
  const S_Pref({Key? key}) : super(key: key);

class _S_PrefState extends State<S_Pref> {

  TextEditingController controller = TextEditingController();
  TextEditingController controller1 = TextEditingController();
  @override
=======
class Sharedprefscreen extends StatefulWidget {
  const Sharedprefscreen({Key? key}) : super(key: key);

  @override
  State<Sharedprefscreen> createState() => _SharedprefscreenState();
}

class _SharedprefscreenState extends State<Sharedprefscreen> {
  TextEditingController controller = TextEditingController();
  TextEditingController controller1 = TextEditingController();
  @override

>>>>>>> 10b369b (Initial commit)
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Shared preference"),),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: controller,
            ),
            TextField(
              controller: controller1,
            ),
            ElevatedButton(
              onPressed: () async {
                SharedPreferences preferences =
                await SharedPreferences.getInstance();
                preferences
                    .setString("username", controller.text)
                    .then((value) => print(value));
                preferences
                    .setString("password", controller1.text)
                    .then((value) => print(value));
                preferences
                    .setBool("logged", true)
                    .then((value) => print(value));
              },
              child: Text("Log In"),
            ),
            ElevatedButton(
              onPressed: () async {
                SharedPreferences preferences =
                await SharedPreferences.getInstance();
                var n = await preferences.getString("name");
                bool? m = await preferences.getBool("tf");
                double? o = await preferences.getDouble("dbl");
                int? p = await preferences.getInt('intigers');
                List<String>? q = await preferences.getStringList("s_list");
                print(n);
                print(m);
                print(o);
                print(p);
                print(q);
              },
              child: Text("Get Data"),
            ),
          ],
        ),
      ),
    );
  }
}
