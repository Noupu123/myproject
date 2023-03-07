import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class FireBasescreen extends StatefulWidget {
  const FireBasescreen({Key? key}) : super(key: key);

  @override
  State<FireBasescreen> createState() => _FireBasescreenState();
}

class _FireBasescreenState extends State<FireBasescreen> {
  TextEditingController username = TextEditingController();
  TextEditingController phone_number = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("1st Firebase Project"),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: username,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(gapPadding: 5),
                    focusedBorder: OutlineInputBorder(gapPadding: 5),
                    suffixIcon: Icon(Icons.person),
                  ),
                ),
              ),
              SizedBox(
                height: 7,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: phone_number,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(gapPadding: 5),
                    focusedBorder: OutlineInputBorder(gapPadding: 5),
                    suffixIcon: Icon(Icons.phone),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(onPressed: () async{
                await FirebaseFirestore.instance.collection("naufal").doc(username.text.trim()).set(
                    {
                      "Username": username.text,
                      "Phone_Number": phone_number.text
                    }
                ).then((value){
                  print("Success");
                  username.clear();
                  phone_number.clear();
                });
              }, child: Text("Add in Firebase"))
            ],
            ),
        );
    }
}
