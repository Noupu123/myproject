//Row And Column
import 'package:flutter/material.dart';

class RowAndColumnScreen extends StatefulWidget {
  const RowAndColumnScreen({Key? key}) : super(key: key);

  @override
  State<RowAndColumnScreen> createState() => _RowAndColumnScreenState();
}

class _RowAndColumnScreenState extends State<RowAndColumnScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Row And Column"),
      ),
      body: Container(
        color: Colors.red,
        // height: 400,
        // width: 400,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text("Hello"),
              Icon(Icons.add),
              Container(
                height: 100,
                width: 100,
                color: Colors.yellow,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [Text("Column inside the Column")],
                ),
              ),
              SizedBox(
                width: 250,
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Hii"),
                    Icon(Icons.account_balance_outlined),
                    Column(
                      children: [
                        Text("Hii"),
                        Icon(Icons.account_balance_outlined),
                        Row(
                          children: [
                            Text("Hii"),
                            Icon(Icons.account_balance_outlined),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              Text("Hello"),
              Icon(Icons.add),
              Container(
                height: 100,
                width: 100,
                color: Colors.yellow,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [Text("Column inside the Column")],
                ),
              ),
              SizedBox(
                width: 250,
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Hii"),
                    Icon(Icons.account_balance_outlined),
                    Column(
                      children: [
                        Text("Hii"),
                        Icon(Icons.account_balance_outlined),
                        Row(
                          children: [
                            Text("Hii"),
                            Icon(Icons.account_balance_outlined),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
