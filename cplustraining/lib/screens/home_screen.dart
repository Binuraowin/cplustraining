import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:cplustraining/config/palette.dart';
import 'package:cplustraining/data/data.dart';
import 'package:cplustraining/widgets/circle_button.dart';
import 'package:cplustraining/widgets/widgets.dart';
import 'package:cplustraining/models/models.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: CustomScrollView(
        slivers:[
        SliverAppBar(
          brightness: Brightness.light,
          backgroundColor: Colors.white,
          title: Text(
            'C Plus',
            style: const TextStyle(
              color:Palette.nsbmgreen,
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
              letterSpacing: -1.2,
            ),
          ),
          centerTitle: false,
          floating: true,
          // actions: <Widget>[
          // CircleButton(
          //   icon:Icons.search,
          //   iconSize:30,
          //   onPressed:() =>{}
          //   ),
          //    CircleButton(
          //   icon:MdiIcons.facebookMessenger,
          //   iconSize:30,
          //   onPressed:() =>{}
          //   )   
          // ],
        ),
        SliverToBoxAdapter(
          child:CreatePostContainer(currentUser:currentUser),
        ),
        // SliverPadding(
        //   padding: const EdgeInsets.fromLTRB( 0.0, 10.0, 0.0, 5.0),
        //   sliver:  SliverToBoxAdapter(
        //   child:Rooms(
        //     onlineUsers: onlineUsers
        //   )
        // )
        //   ),
        //    SliverPadding(
        //   padding: const EdgeInsets.fromLTRB( 0.0, 5.0, 0.0, 5.0),
        //   sliver:  SliverToBoxAdapter(
        //   child:Stories(
        //     currentUser: currentUser,
        //     stories: stories,
        //   )
        // )
        //   ),
      SliverList(
        delegate: SliverChildBuilderDelegate((context, index){
          final Post post = posts[index];
          return PostContainer(post:post);       
          },
          childCount: posts.length,
          ),
        )
        ]
      ),
    );
  }
}