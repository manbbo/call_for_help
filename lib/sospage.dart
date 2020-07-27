import 'package:callforhelp/custom/clippers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ibm_generic.dart';

class SOSPage extends StatefulWidget {
  @override
  _SOSPageState createState() => _SOSPageState();
}

class _SOSPageState extends State<SOSPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color.fromRGBO(209, 71, 78, 1),
      body: new Container(
        child: new Stack(
          children: <Widget>[
            new Container(
              child: new ClipPath(
                child: new Container(
                  width: MediaQuery.of(context).size.width,
                  height: 320,
                  padding: EdgeInsets.only(top: 30),
                  alignment: Alignment.topLeft,
                  child: new Column(
                    children: <Widget>[
                      new Container(
                        width: MediaQuery.of(context).size.width,
                        alignment: Alignment.centerLeft,
                        child: new IconButton(icon: Icon(Icons.arrow_back_ios, color: Colors.black,),
                            onPressed: () => Navigator.pop(context)),
                      ),
                      new Container(
                          child: Image.asset('assets/images/applogo.png'),
                          width: 250,
                          height: 200
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white
                  ),
                ),
                clipper: SOSPageClipper(),
              ),
            ),
            new Container(
              padding: EdgeInsets.only(top: (MediaQuery.of(context).size.height/2), left: 8, right: 8),
              alignment: Alignment.bottomCenter,
              child: new Column(
                children: <Widget>[
                  new Row(
                    children: <Widget>[
                      new ButtonTheme(
                        minWidth: 320,
                        height: 40,
                        child: new RaisedButton(
                          child: Text.rich(TextSpan(
                              text: "Ask for HELP",
                              style: TextStyle(fontSize: 24, color: Colors.black))),
                          color: Color.fromRGBO(242, 174, 193, 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                          onPressed: () => {
                            Navigator.push(context, MaterialPageRoute(builder: (BuildContext build) {
                              return ChatBot();
                            }))
                          },
                        ),
                      ),
                    ],
                  ),
                  new Row(
                    children: <Widget>[
                      new ButtonTheme(
                        minWidth: 320,
                        height: 40,
                        child: new RaisedButton(
                          child: Text.rich(TextSpan(
                              text: "Help other Communities",
                              style: TextStyle(fontSize: 24, color: Colors.black))),
                          color: Color.fromRGBO(242, 174, 193, 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                          onPressed: () => {},
                        ),
                      ),
                    ],
                  ),
                  new Row(
                    children: <Widget>[
                      new ButtonTheme(
                        minWidth: 320,
                        height: 40,
                        child: new RaisedButton(
                          child: Text.rich(TextSpan(
                              text: "Provide a Service",
                              style: TextStyle(fontSize: 24, color: Colors.black))),
                          color: Color.fromRGBO(242, 174, 193, 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                          onPressed: () => {},
                        ),
                      ),
                    ],
                  ),
                  new Row(
                    children: <Widget>[
                      new ButtonTheme(
                        minWidth: 320,
                        height: 40,
                        child: new RaisedButton(
                          child: Text.rich(TextSpan(
                              text: "Share your Data",
                              style: TextStyle(fontSize: 24, color: Colors.black))),
                          color: Color.fromRGBO(242, 174, 193, 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                          onPressed: () => {},
                        ),
                      ),
                    ],
                  ),
                  new Container(height: 10,),
                  new Container(
                    width: MediaQuery.of(context).size.width - 50,
                    height: 40,
                    child: new ButtonTheme(
                      child: new RaisedButton(
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Container(
                              width: 40,
                              height: 40,
                              child: Image.asset('assets/images/helpbutton2.png'),
                            ),
                            Text.rich(TextSpan(
                                text: "Sponsor a Community",
                                style: TextStyle(fontSize: 24, color: Color.fromRGBO(242, 174, 193, 1),))),
                          ],
                        ),
                        color: Color.fromRGBO(56, 60, 59, 1),//Color.fromRGBO(242, 174, 193, 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                        onPressed: () => {},
                      ),
                    ),
                  )
                ],
              ),
            )
            //ChatBot()
          ],
        ),
      )
    );
  }
}