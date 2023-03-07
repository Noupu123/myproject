import 'package:flutter/material.dart';
class Expansion extends StatefulWidget {
  const Expansion({Key? key}) : super(key: key);

  @override
  State<Expansion> createState() => _ExpansionState();
}

class _ExpansionState extends State<Expansion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expansion Title"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ExpansionTile(title: Text("Expansion Tiles")),
            ExpansionTile(title:Text("ExpansionTile"),
            subtitle: Text("Subtitle of expansion Title"),),
            ExpansionTile(title: Text("Expansion Tile"),
            subtitle: Text("Subtitle of Expansion Tile"),
            children: [
              Text("Flutter Logo"),
              FlutterLogo(
                size: 300,

              )
            ],),
            ExpansionTile(title:Text("Expansion Title"),
              backgroundColor: Colors.red.shade50,
              subtitle: Text("Subtitle of Expansion Tile"),
              textColor: Colors.blue.shade50,
              iconColor:Colors.orange,
              children: [
                Text("Flutter logo"),
                FlutterLogo(
                  size: 300,
                )
              ],
            ),
      ExpansionTile(title:Text("Expansion Title"),
          subtitle: Text("Subtitle of Expansion Tile"),
          collapsedTextColor: Colors.indigo,
          collapsedIconColor: Colors.cyan,
          collapsedBackgroundColor: Colors.purple.shade50,
          textColor: Colors.blue.shade50,
          iconColor:Colors.orange,
          children: [
          Text("Flutter logo"),
      FlutterLogo(
        size: 300,
      )
          ],
      ), //Expansion tile with leadind,traling
            ExpansionTile(
              leading: Icon(Icons.adb),
              trailing: Icon(Icons.adb),
              title: Text("Expansion Tiles"),
              subtitle: Text("Subtitle of Exapnsion Tile"),
              backgroundColor: Colors.red,
              children: [
                Text("Flutter Logo"),
                FlutterLogo(
                  size: 300,
                )
              ],
            ), //Expansion tile with childrenPadding,tilePadding
            ExpansionTile(
              childrenPadding: EdgeInsets.all(150),
              tilePadding: EdgeInsets.all(50),
              title: Text("Expansion Tiles"),
              subtitle: Text("Subtitle of Exapnsion Tile"),
              backgroundColor: Colors.red,
              children: [
                Text("Flutter Logo"),
                FlutterLogo(
                  size: 300,
                )
              ],
            ), //Expansion tile with initiallyExpanded,onExpansionChanged
            ExpansionTile(
              initiallyExpanded: true,
              title: Text("Expansion Tiles"),
              subtitle: Text("Subtitle of Exapnsion Tile"),
              backgroundColor: Colors.green.shade50,
              onExpansionChanged: (value) {
                if (value == true) {
                  print("Expansion Opened");
                } else {
                  print("Expansion Closed");
                }
              },
              children: [
                Text("Flutter Logo"),
                FlutterLogo(
                  size: 300,
                )
              ],
            ),
            ExpansionTile(
              title: Text("Expansion Tiles"),
              subtitle: Text("Subtitle of Exapnsion Tile"),
              controlAffinity: ListTileControlAffinity.leading,
              tilePadding: EdgeInsets.all(50),
              children: [
                Text("Flutter Logo"),
                FlutterLogo(
                  size: 300,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}




