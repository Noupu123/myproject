//RadioButton and Switch
import 'package:flutter/material.dart';

class ButtonsHome extends StatefulWidget {
  const ButtonsHome({Key? key}) : super(key: key);

  @override
  State<ButtonsHome> createState() => _ButtonsHomeState();
}

enum SingingCharacter { lafayette, jefferson }

class _ButtonsHomeState extends State<ButtonsHome> {
  SingingCharacter? _character = SingingCharacter.lafayette;
  bool light = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Buttons Home"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [

            ListTile(
              title: const Text('Lafayette'),
              leading: Radio<SingingCharacter>(
                value: SingingCharacter.lafayette,
                groupValue: _character,
                onChanged: (SingingCharacter? value) {
                  setState(() {
                    _character = value;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text('Thomas Jefferson'),
              leading: Radio<SingingCharacter>(
                value: SingingCharacter.jefferson,
                groupValue: _character,
                onChanged: (SingingCharacter? value) {
                  setState(() {
                    _character = value;
                  });
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Switch(
              // This bool value toggles the switch.
              value: light,
              activeColor: Colors.red,
              onChanged: (bool value) {
                // This is called when the user toggles the switch.
                setState(() {
                  light = value;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
