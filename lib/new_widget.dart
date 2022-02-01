import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget() : super();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widget Test',
      home: Scaffold(
        appBar: AppBar(
          title: Text("title"),
        ),
        body: Column(
          children: const [
            ListTile(
              key: Key("key1"),
              tileColor: Colors.red,
              title: Text('Tile1'),
            ),
            ListTile(
              key: Key("key2"),
              tileColor: Colors.blue,
              title: Text('Tile1'),
            )
          ],
        ),
      ),
    );
  }
}
