import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ChatBot extends StatefulWidget {
  @override
  _ChatBotState createState() => _ChatBotState();
}

class _ChatBotState extends State<ChatBot> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold (
      body: new Stack(
        children: <Widget>[
          new Container(
            padding: EdgeInsets.only(top: 30),
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.topLeft,
            child: new IconButton(icon: Icon(Icons.arrow_back_ios
            ), onPressed: () => Navigator.pop(context)),
            decoration: BoxDecoration(
              color: Color.fromRGBO(209, 71, 78, 1),
            ),
          ),
          new Container(
            padding: EdgeInsets.only(top: 80),
            child: WebView(initialUrl: 'https://web-chat.global.assistant.watson.cloud.ibm.com/preview.html?'
                'region=us-south&integrationID=8ab0d846-6423-42ba-889e-ed8e6d5b4424&'
                'serviceInstanceID=64f4d01f-4c25-4005-aa4d-28397ca5cf2a',
              javascriptMode: JavascriptMode.unrestricted,),
          ),
        ],
      )
    );
  }
}