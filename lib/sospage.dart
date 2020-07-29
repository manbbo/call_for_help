import 'package:callforhelp/communitylist.dart';
import 'package:callforhelp/custom/clippers.dart';
import 'package:callforhelp/sponsorship_profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import 'ibm_generic.dart';

class SOSPage extends StatefulWidget {
  @override
  _SOSPageState createState() => _SOSPageState();
}

class _SOSPageState extends State<SOSPage> {
  int donation_index = 0;

  Future<bool> _onWillPop() {
    if (donation_index <=0) {
      return showDialog(
        context: context,
        builder: (context) =>
        new AlertDialog(
          title: new Text('Do you really want to cancel?'),
          content: new Text('Doing so, your donation will not be completed.'),
          actions: <Widget>[
            new GestureDetector(
              onTap: () => Navigator.of(context).pop(false),
              child: Text("NO"),
            ),
            SizedBox(height: 16),
            new GestureDetector(
              onTap: () => Navigator.of(context).pop(true),
              child: Text("YES"),
            ),
          ],
        ),
      ) ??
          false;
    } else if (donation_index < 4){
      setState(() {
        donation_index-= 1;
      });
    } else {
      setState(() {
        donation_index = 0 ?? true;
        Navigator.pop(context);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
          backgroundColor: Color.fromRGBO(209, 71, 78, 1),
          body: new Container(
            child: new Stack(
              children: <Widget>[
                new Container(
                  child: new ClipPath(
                    child: new Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height/2.6,
                      padding: EdgeInsets.only(top: 30),
                      alignment: Alignment.topLeft,
                      child: new Column(
                        children: <Widget>[
                          new Container(
                            width: MediaQuery.of(context).size.width,
                            alignment: Alignment.centerLeft,
                            child: new IconButton(icon: Icon(Icons.arrow_back_ios, color: Color.fromRGBO(56, 60, 59, 1),),
                                onPressed: () => Navigator.pop(context)),
                          ),
                          new Container(
                              child: Image.asset('assets/images/applogo.png'),
                              width: MediaQuery.of(context).size.height/4,
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
                donations(context).elementAt(donation_index)
                //ChatBot()
              ],
            ),
          )
      ),
    );
  }

  List<Widget> donations(BuildContext context) {
    return [first_donation_screen(context, donation_index),
      new GestureDetector(child: new Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Colors.white
        ),
        child: CommunitiesList(title: 'COMMUNITIES', context: this.context,),
      ),
          onTap: () { setState(() {
            donation_index++;
          }); }
      ),
      new GestureDetector(child: new Container(
        height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                color: Colors.white
            ),
            child: SponsorProfile(name: 'Community Vanzega', nickname: '@xdabahia', context: this.context,),
          ),
          onTap: () { setState(() {
            donation_index++;
          }); }
      ),
      second_donation_screen(context, donation_index),
      last_donation_screen(context)];
  }

  Widget first_donation_screen(BuildContext context, int index) {
    return new Container(
      padding: EdgeInsets.only(top: (MediaQuery.of(context).size.height/2)-180, left: 8, right: 8),
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Container(
                child: new Image.asset('assets/images/comunidade.png'),
                width: 87,
                height: 100,
              ),
              new ButtonTheme(
                minWidth: 240,
                height: 40,
                child: new RaisedButton(
                  child: Text.rich(TextSpan(
                      text: "Ask for HELP",
                      style: TextStyle(fontSize: 18, color: Color.fromRGBO(56, 60, 59, 1)))),
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Container(
                child: new Image.asset('assets/images/empresa.png'),
                width: 87,
                height: 100,
              ),
              new ButtonTheme(
                minWidth: 240,
                height: 40,
                child: new RaisedButton(
                  child: Text.rich(TextSpan(
                      text: "Help other Communities",
                      style: TextStyle(fontSize: 18, color: Color.fromRGBO(56, 60, 59, 1)))),
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Container(
                child: new Image.asset('assets/images/voluntario.png'),
                width: 87,
                height: 100,
              ),
              new ButtonTheme(
                minWidth: 240,
                height: 40,
                child: new RaisedButton(
                  child: Text.rich(TextSpan(
                      text: "Provide a Service",
                      style: TextStyle(fontSize: 18, color: Color.fromRGBO(56, 60, 59, 1)))),
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Container(
                child: new Image.asset('assets/images/pesquisador.png'),
                width: 87,
                height: 100,
              ),
              new ButtonTheme(
                minWidth: 240,
                height: 40,
                child: new RaisedButton(
                  child: Text.rich(TextSpan(
                      text: "Share your Data",
                      style: TextStyle(fontSize: 18, color: Color.fromRGBO(56, 60, 59, 1)))),
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
                          style: TextStyle(fontSize: 18, color: Color.fromRGBO(242, 174, 193, 1),))),
                    ],
                  ),
                  color: Color.fromRGBO(56, 60, 59, 1),//Color.fromRGBO(242, 174, 193, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  onPressed: () => {
                    setState(() {
                      donation_index = 1;
                    })
                  }
              ),
            ),
          )
        ],
      ),
    );
  }
  Widget second_donation_screen(BuildContext context, int index) {
    return new Container(
      padding: EdgeInsets.only(top: (MediaQuery.of(context).size.height/2)-120, left: 8, right: 8),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      alignment: Alignment.center,
      child: new Column(
          children: <Widget>[
            new Container(
              width: MediaQuery.of(context).size.width-30,
              height:MediaQuery.of(context).size.height - 420,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Color.fromRGBO(242, 174, 193, 1),
                  borderRadius: BorderRadius.circular(40),
                  boxShadow: <BoxShadow>[
                    BoxShadow(color: Colors.black, blurRadius: 20.0, offset: Offset(1.0, 8.0), spreadRadius: 0.1)
                  ]
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('ALMOST DONE!!!', style: TextStyle(
                      fontSize: 25,
                      color: Color.fromRGBO(56, 60, 59, 1)
                  ),),
                  new Container(height: 40,),
                  Text("You're about to donate: 10KG OF RICE\nTo: Comunity X", style: TextStyle(
                      fontSize: 20,
                      color: Color.fromRGBO(56, 60, 59, 1)
                  ),)
                ],
              ),
            ),
            new Container(height: 10,),
            new Container(
              width: 200,
              height: 50,
              child: new ButtonTheme(
                child: new RaisedButton(
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text.rich(TextSpan(
                            text: "DONATE!",
                            style: TextStyle(fontSize: 25, color: Color.fromRGBO(242, 174, 193, 1),))),
                      ],
                    ),
                    color: Color.fromRGBO(56, 60, 59, 1),//Color.fromRGBO(242, 174, 193, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    onPressed: () => {
                      setState(() {
                        donation_index = 4;
                      })
                    }
                ),
              ),
            ),
          ]
      ),
    );
  }
  Widget last_donation_screen(BuildContext context) {
    return new Container(
      padding: EdgeInsets.only(top: (MediaQuery.of(context).size.height/2)-120, left: 8, right: 8),
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.bottomCenter,
      child: new Column(
        children: <Widget>[
          new Container(
            alignment: Alignment.center,
            child: Icon(Icons.check_circle, color: Colors.green,size: 200,),
            width: MediaQuery.of(context).size.width-30,
            height:MediaQuery.of(context).size.height - 420,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Color.fromRGBO(242, 174, 193, 1),
                borderRadius: BorderRadius.circular(40),
                boxShadow: <BoxShadow>[
                  BoxShadow(color: Colors.black, blurRadius: 20.0, offset: Offset(1.0, 8.0), spreadRadius: 0.1)
                ]
            ),
          ),
          new Container(height: 10,),
          new ButtonTheme(
            minWidth: 240,
            height: 40,
            child: new RaisedButton(
              child: Text.rich(TextSpan(
                  text: "Go to the beginning",
                  style: TextStyle(fontSize: 18, color: Color.fromRGBO(56, 60, 59, 1)))),
              color: Color.fromRGBO(242, 174, 193, 1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
              onPressed: () => {
                setState(() {
                  donation_index = 0;
                })
              },
            ),
          ),
          new Container(
            width: 240,
            height: 40,
            child: new ButtonTheme(
              child: new RaisedButton(
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text.rich(TextSpan(
                          text: "Close this window",
                          style: TextStyle(fontSize: 18, color: Color.fromRGBO(242, 174, 193, 1),))),
                    ],
                  ),
                  color: Color.fromRGBO(56, 60, 59, 1),//Color.fromRGBO(242, 174, 193, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  onPressed: () => {
                    Navigator.pop(context)
                  }
              ),
            ),
          ),
        ],
      ),
    );
  }
}