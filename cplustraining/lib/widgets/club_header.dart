import 'package:cached_network_image/cached_network_image.dart';
import 'package:cplustraining/models/joinform_model.dart';
import 'package:cplustraining/screens/home_screen.dart';
import 'package:cplustraining/screens/join_screen.dart';
import 'package:flutter/material.dart';
import 'package:cplustraining/data/data.dart';
import 'package:cplustraining/models/models.dart';
import 'package:cplustraining/widgets/profile_avatar.dart';

class ClubHeader extends StatelessWidget {
  final User currentUser;
  const ClubHeader({Key key, this.currentUser}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 0.0),
      color: Colors.white,
      child: Column(
        children:[
     
          const Divider(
            height:10.0,
            thickness:0.5
          ),
          Container(
            height: 40.0,
            child:  Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:[
              FlatButton.icon(onPressed: () {
                 Navigator.push(context,
            MaterialPageRoute(
        builder:(context) => HomeScreen()
         ),);
         
               
              }, 
              icon: const Icon(Icons.home, color: Colors.red,), 
              label: Text("Home")
              ),
              const VerticalDivider(
                width:8.0
              ),
                  FlatButton.icon(onPressed: () {
                             Navigator.push(context,
            MaterialPageRoute(
        builder:(context) => JoinPage()
         ),);
                  }, 
              icon: const Icon(Icons.person_add, color: Colors.green,), 
              label: Text("Join")
              ),
              const VerticalDivider(
                width:8.0
              ),
                  FlatButton.icon(onPressed: () => print("Events"), 
              icon: const Icon(Icons.flare, color: Colors.purple,), 
              label: Text("Events")
              ),
              const VerticalDivider(
                width:8.0
              )
            ]
          )
          )
        
        ]
      ),
    );
  }
}
