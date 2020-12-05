import 'package:cached_network_image/cached_network_image.dart';
import 'package:cplustraining/screens/club_list.dart';
import 'package:flutter/material.dart';
import 'package:cplustraining/data/data.dart';
import 'package:cplustraining/models/models.dart';
import 'package:cplustraining/widgets/profile_avatar.dart';

class CreatePostContainer extends StatelessWidget {
  final User currentUser;
  const CreatePostContainer({Key key, this.currentUser}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 0.0),
      color: Colors.white,
      child: Column(
        children:[
          Row(
            children: <Widget>[
              ProfileAvatar(imageUrl: currentUser.imageUrl),

              const SizedBox(width: 8.0),
              Expanded(
                  child:Text(currentUser.name,
                    style: const TextStyle(
                        fontWeight: FontWeight.w600
                    ),
                  )
              )
            ],
          ),

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
                      builder:(context) => ClubListPage(

                      )
                  ),);
              },
              icon: const Icon(Icons.flag, color: Colors.red,), 
              label: Text("Club Feed")
              ),
              const VerticalDivider(
                width:4.0
              ),
                  FlatButton.icon(onPressed: () => print("My club"), 
              icon: const Icon(Icons.person, color: Colors.green,), 
              label: Text("My club")
              ),
              const VerticalDivider(
                  width:4.0
              ),
                  FlatButton.icon(onPressed: () => print("Add Post"),
              icon: const Icon(Icons.event, color: Colors.purple,),
              label: Text("Add Event")
              ),
              const VerticalDivider(
                  width:4.0
              ),
//              FlatButton.icon(onPressed: () => print("Add Event"),
//                  icon: const Icon(Icons.event, color: Colors.purple,),
//                  label: Text("Setings")
//              ),
//              const VerticalDivider(
//                  width:4.0
//              ),
            ]
          )
          )
        
        ]
      ),
    );
  }
}
