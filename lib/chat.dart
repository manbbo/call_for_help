import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: new Stack(
        children: <Widget>[
          new Container(
            child: Text.rich(new TextSpan(text: 'widget.title')),
            alignment: Alignment.center,
          ),
          new Container(
            //child: ,
          )
        ],
      ),
    );
  }
}