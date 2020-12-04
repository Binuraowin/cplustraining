import 'package:cplustraining/config/palette.dart';
import 'package:cplustraining/models/models.dart';
import 'package:cplustraining/widgets/club_list.dart';
import 'package:flutter/material.dart';
import 'package:cplustraining/data/data.dart';

class ClubListPage extends StatefulWidget {
  @override
  _ClubListPageState createState() => _ClubListPageState();
}

class _ClubListPageState extends State<ClubListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar:AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios,
          color: Palette.facebookBlue,
          ), 
          onPressed: (){
            Navigator.of(context).pop();
          }),
          brightness: Brightness.light,
          backgroundColor: Colors.white,
          title: Text(
            'Clubs',
            style: const TextStyle(
              color:Palette.nsbmgreen,
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
              letterSpacing: -1.2,
            ),
          ),
      ) ,
      body:  CustomScrollView(
        slivers:[

      SliverList(
        delegate: SliverChildBuilderDelegate((context, index){
          final Post post = posts[index];
          return ClubListHeader(post:post);       
          },
          childCount: posts.length,
          ),
        )
        ]
      ),
    );
  }
}