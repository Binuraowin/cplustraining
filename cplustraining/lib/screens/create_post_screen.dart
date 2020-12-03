import 'package:cplustraining/models/post_model.dart';
import 'package:flutter/material.dart';

class CreatePostPage extends StatefulWidget {
  @override
  _CreatePostPageState createState() => _CreatePostPageState();
}

class _CreatePostPageState extends State<CreatePostPage> {
  final _formKey = GlobalKey<FormState>();

  String error = '';
  Post post;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              SizedBox(height: 100.0),
              TextField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: InputDecoration(
                  hintText: 'Enter the Caption',
                ),
                //validator: (val) => val.isEmpty ? 'Enter the Caption' : null,
                onChanged: (val) {
                  setState(() {
                    post.caption = val;
                  });
                },
              ),
              // SizedBox(height: 20.0),
              // TextFormField(
              //   decoration: InputDecoration(
              //     hintText: 'Enter the Caption',
              //   ),
              //   validator: (val) => val.isEmpty ? 'Enter the Caption' : null,
              //   onChanged: (val) {
              //     setState(() {
              //       post.caption = val;
              //     });
              //   },
              // ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                       RaisedButton(
                  onPressed: null,
                  color: Colors.blue,
                  child: Icon(Icons.add_a_photo),
                ),
                SizedBox(width: 20.0),
                RaisedButton(
                    color: Colors.blue[700],
                    child: Text(
                      'Submit',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () async {}),
                SizedBox(height: 12.0),
                ],
                
           
              ),
              Text(
                error,
                style: TextStyle(color: Colors.red, fontSize: 14.0),
              )
            ],
          )),
    );
  }
}
