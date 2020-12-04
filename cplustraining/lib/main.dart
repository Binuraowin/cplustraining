import 'package:cplustraining/screens/club_admin.dart';
import 'package:cplustraining/screens/club_list.dart';
import 'package:cplustraining/screens/create_post_screen.dart';
import 'package:cplustraining/screens/home_screen.dart';
import 'package:cplustraining/screens/nav_screens.dart';
import 'package:flutter/material.dart';
import './components/home.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // theme: ThemeData(

      //   primarySwatch: Colors.blue,
     
      //   visualDensity: VisualDensity.adaptivePlatformDensity,
      // ),
      home: AdminPage(),
    );
  }
}
