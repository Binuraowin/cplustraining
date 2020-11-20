import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: (Text("Binura")),
      ),
      body: Center(
        child:Card(
               child: Column(
                   mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading: Icon(Icons.access_alarm),
               title: Text('Heart Shaker'),
          subtitle: Text('TWICE'),
            )
          ],
        ),
        ),
     
      ),
    );
  }
}