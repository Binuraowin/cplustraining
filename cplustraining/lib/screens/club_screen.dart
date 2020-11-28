import 'package:cplustraining/config/palette.dart';
import 'package:cplustraining/data/data.dart';
import 'package:cplustraining/models/models.dart';
import 'package:cplustraining/widgets/club_header.dart';
import 'package:cplustraining/widgets/club_post_container.dart';
import 'package:cplustraining/widgets/create_post_container.dart';
import 'package:cplustraining/widgets/post_container.dart';
import 'package:flutter/material.dart';

class ClubPage extends StatefulWidget {
  @override
  _ClubPageState createState() => _ClubPageState();
}

class _ClubPageState extends State<ClubPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
            'Drama Club',
            style: const TextStyle(
              color:Palette.nsbmgreen,
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
              letterSpacing: -1.2,
            ),
          ),
      ) ,
      
      body: CustomScrollView(
        slivers:[
        // SliverAppBar(
         // brightness: Brightness.light,
          // backgroundColor: Colors.white,
          // title: Text(
          //   'Drama Club',
          //   style: const TextStyle(
          //     color:Palette.nsbmgreen,
          //     fontSize: 28.0,
          //     fontWeight: FontWeight.bold,
          //     letterSpacing: -1.2,
          //   ),
          // ),
          // centerTitle: false,
          // floating: true,
     
        // ),
        SliverToBoxAdapter(
          child:ClubHeader(currentUser:currentUser),
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
          return ClubPostContainer(post:post);       
          },
          childCount: posts.length,
          ),
        )
        ]
      ),
    );
  }
}