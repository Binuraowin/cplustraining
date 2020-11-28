import 'package:cplustraining/config/palette.dart';
import 'package:cplustraining/models/joinform_model.dart';
import 'package:flutter/material.dart';

class JoinPage extends StatefulWidget {
  @override
  _JoinPageState createState() => _JoinPageState();
}

class _JoinPageState extends State<JoinPage> {
  final _formKey =GlobalKey<FormState>();

   String error = '';
   JoinForm joinForm;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.blue[100],
         appBar:AppBar(
           elevation: 0.0,
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
            'Join Club',
            style: const TextStyle(
              color:Palette.nsbmgreen,
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
              letterSpacing: -1.2,
            ),
          ),
      ) ,
      body: Container(
        height: MediaQuery.of(context).size.height -90,
        decoration: BoxDecoration(
                color: Colors.white,

                borderRadius: BorderRadius.only(topLeft: Radius.circular(80.0), bottomRight: Radius.circular(60) )
              ),
              child: ListView(
                  primary: false,
                 padding: EdgeInsets.only(left: 25.0, right: 20.0),
                 children: <Widget>[
                   Form(
           key: _formKey,
          child: Column(
            children: <Widget>[
              SizedBox(height: 100.0),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Name',
                ),
                 validator: (val) => val.isEmpty  ? 'enter a name' :null,
                onChanged: (val){
                    setState(() {
                      joinForm.name= val;
                    });
                },
              ),
                SizedBox(height: 20.0),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Campus Id',
                ),
                 validator: (val) => val.isEmpty  ? 'enter Campus Id ' :null,
                onChanged: (val){
                    setState(() {
                      joinForm.campusId= val;
                    });
                },
              ),
                SizedBox(height: 20.0),
                TextFormField(
                decoration: InputDecoration(
                  hintText: 'Degree',
                ),
                 validator: (val) => val.isEmpty  ? 'enter Degree' :null,
                onChanged: (val){
                    setState(() {
                      joinForm.degree= val;
                    });
                },
              ),
                SizedBox(height: 20.0),
                TextFormField(
                decoration: InputDecoration(
                  hintText: 'Batch',
                ),
                 validator: (val) => val.isEmpty  ? 'enter the Batch' :null,
                onChanged: (val){
                    setState(() {
                      joinForm.batch= val;
                    });
                },
              ),
                SizedBox(height: 20.0),
                TextFormField(
                decoration: InputDecoration(
                  hintText: 'Faculty',
                ),
                 validator: (val) => val.isEmpty  ? 'enter the Faculty' :null,
                onChanged: (val){
                    setState(() {
                      joinForm.faculty= val;
                    });
                },
              ),
                SizedBox(height: 20.0),
               RaisedButton(
                 color: Colors.blue[700],
                 child: Text(
                   'Submit',
                   style: TextStyle(
                     color: Colors.white
                   ),
                 ),
                 onPressed: () async{
                
                 }
                 ),
                 SizedBox(height: 12.0),
                 Text(
                   error,
                   style: TextStyle(color: Colors.red,fontSize: 14.0),
                 )
            ],
          )
          )
                 ],
              ),
        // padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        // child: 
    
      ),
    );
  }
}