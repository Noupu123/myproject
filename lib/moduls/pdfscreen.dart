import 'package:flutter/material.dart';

class PdfUpload extends StatefulWidget {
  const PdfUpload({Key? key}) : super(key: key);

  @override
  State<PdfUpload> createState() => _PdfUploadState();
}

class _PdfUploadState extends State<PdfUpload> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.yellowAccent,
          title: Text(
            "Upload Pdf",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(
            children: [
              Center(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("View pdf"),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text("Add Pdf"),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text("Upload"),
              ),
              SizedBox(
                height: 20,
              ),
            ],
        ),
        );
  }
}
