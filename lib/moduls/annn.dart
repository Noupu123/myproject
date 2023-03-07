import 'package:flutter/material.dart';

class AlertDialogsHome extends StatelessWidget {
  AlertDialogsHome({Key? key}) : super(key: key);
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: controller,
            ),
            ElevatedButton(
              onPressed: () {
                final snackBar = SnackBar(
                  behavior: SnackBarBehavior.floating,
                  content: Text('Success'),
                  action: SnackBarAction(
                    label: 'Undo',
                    onPressed: () {
                      // Some code to undo the change.
                    },
                  ),
                );
                if (controller.text.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                } else {
                  print("Success");
                }
                // Navigator.push(context,
                //         MaterialPageRoute(builder: (context) => SnackBarPage()))
                //     .then((value) {
                //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                //     behavior: SnackBarBehavior.floating,
                //     content: Text('Success'),
                //     action: SnackBarAction(
                //       label: 'Undo',
                //       onPressed: () {
                //         // Some code to undo the change.
                //       },
                //     ),
                //   ));
                // });

                //
                // // Find the ScaffoldMessenger in the widget tree
                // // and use it to show a SnackBar.
                // ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: const Text('Show SnackBar'),
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () => showDialog(
                context: context,
                builder: (BuildContext context) => Dialog(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('This is a typical dialog.'),
                        SizedBox(height: 15),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text('Close'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              child: Text('Show Dialog'),
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () => showDialog(
                context: context,
                builder: (BuildContext context) => Dialog(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('This is a fullscreen dialog.'),
                      const SizedBox(height: 15),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('Close'),
                      ),
                    ],
                  ),
                ),
              ),
              child: const Text('Show Fullscreen Dialog'),
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () => showDialog(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  title: const Text('AlertDialog Title'),
                  content: const Text('AlertDialog description'),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'Cancel'),
                      child: const Text('Cancel'),
                    ),
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'OK'),
                      child: const Text('OK'),
                    ),
                  ],
                ),
              ),
              child: const Text('Show Dialog'),
            )
          ],
        ),
      ),
    );
  }
}
