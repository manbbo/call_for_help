import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'choicespage.dart';

class Choice extends StatefulWidget {
  @override
  _ChoiceState createState() => _ChoiceState();
}

class _ChoiceState extends State<Choice> {
  bool changed = false;

  Widget circled(String profile, String name, Widget widget) {
    return new Container(
      child: new Column(
        children: <Widget>[
          Container(
            height: 140,
            width: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(300),
            ),
            child: FlatButton(
              onPressed: () => { Navigator.push(context, MaterialPageRoute(
                builder: (BuildContext build) {
                  return widget;
                },
              ))},
              child: Image.asset('assets/images/$profile.png'),
            ),
          ),
          new Container(
            child: Text(name.toUpperCase(),
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            children: <Widget>[
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ClipRect(
                      child: Container(
                        padding: EdgeInsets.only(top: 40),
                        height: 200,
                        width: MediaQuery.of(context).size.width - 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Image.asset('assets/images/callforhelp.png'),
                       ),
                    ),
                    new Container(height: 12),
                  ],
                ),
              ),

              // perfis circulares
              new Expanded(
                flex: 0,
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      circled('empresa', 'Enterprise', EnterprisePage()),
                      circled('pesquisador', 'Researcher', ResearcherPage()),
                    ],
              )),
              new Expanded(
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      circled('voluntario', 'Volunteer', VolunteerPage()),
                      circled('comunidade', 'Community', CommunityPage()),
                    ],
                  ))
            ],
        ),
    );
  }
}
