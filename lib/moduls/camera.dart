import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CameraImages extends StatefulWidget {
  const CameraImages({Key? key}) : super(key: key);

  @override
  State<CameraImages> createState() => _CameraImagesState();
}

class _CameraImagesState extends State<CameraImages> {
  File? imageFile;
  String imageUrl = "";
  Future getImageCamera() async {
    ImagePicker _picker = ImagePicker();
    await _picker.pickImage(source: ImageSource.camera).then((xFile) async {
      if (xFile != null) {
        imageFile = File(xFile.path);
        var ref = FirebaseStorage.instance
            .ref()
            .child('images')
            .child("${imageFile}.jpg");

        var uploadTask = await ref.putFile(imageFile!);
        imageUrl = await uploadTask.ref.getDownloadURL();
        setState(() {});
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            imageUrl.isEmpty ? Container() : Image.network(imageUrl),
            TextButton(
              onPressed: () {
                getImageCamera();
              },
              child: Text("Camera Image"),
            ),
          ],
        ),
      ),
    );
  }
}
