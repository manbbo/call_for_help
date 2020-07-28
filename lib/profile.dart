import 'package:callforhelp/gamification.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  String nickname, name;
  Profile({Key key, this.nickname, this.name}) : super(key: key);
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  Widget decoration() {
    return ClipPath(
      //clipper: Clipper(),
      child: new Container(
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Container(
              child: new ClipOval(
                child: Image.network(
                    'https://pbs.twimg.com/profile_images/1192936776765181953/WII_Ai_K_400x400.jpg'),
              ),
              height: 120,
              width: 120,
              alignment: Alignment.centerLeft,
            ),
            new Container( width: 5,),
            new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Container(
                  child: new Text.rich(TextSpan(
                      text: widget.name,
                      style: TextStyle(color: Color.fromRGBO(56, 60, 59, 1), fontSize: 30))),
                  alignment: Alignment.topCenter,
                  padding: EdgeInsets.only(top: 15),
                ),
                new Container(
                  child: new Text.rich(TextSpan(
                      text: widget.nickname,
                      style: TextStyle(color: Color.fromRGBO(56, 60, 59, 1), fontSize: 15))),
                  alignment: Alignment.topCenter,
                  padding: EdgeInsets.only(top: 10),
                ),
              ],
            )
          ],
        ),
        height: 300,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: new Stack(
        children: <Widget>[
          new Container(
            child: new Stack(
              children: <Widget>[
                decoration(),
                // padding: EdgeInsets.only(top: MediaQuery.of(context).size.height/4),
              ],
            ),
          ),
          new Container(
            child: IconButton(
                icon: Icon(
              Icons.settings,
              color: Color.fromRGBO(56, 60, 59, 1),
              size: 40,
            )),
            padding: EdgeInsets.only(top: 30, right: 10),
            alignment: Alignment.topRight,
          ),
          new Positioned(
            height: (MediaQuery.of(context).size.height/2) - 50,
            width: MediaQuery.of(context).size.width,
            top: (MediaQuery.of(context).size.height/2) - 40,
            child: new AchievementList(
              achievements: [
                new Achievement(
                  title: 'Employee(s) Helping!',
                  quantity: 50,
                ),
                new Achievement(
                  title: 'First Donation! They thank you!!!',
                  quantity: 1,
                ),
                new Achievement(
                  title: 'Sponsorships.',
                  quantity: 5,
                ),
                new Achievement(
                  title: 'Families Reached!',
                  quantity: 150,
                ),
                new Achievement(
                  title: 'Families with Medication!',
                  quantity: 5,
                ),
                new Achievement(
                  title: 'Water Distributed to Families.',
                  quantity: 100,
                ),
              ],
            ),
          ),
          new Positioned(child: Container(
            alignment: Alignment.center,
            width: 280,
            height: 40,
            child: Text.rich(TextSpan(
                text: 'My Achievements',
                style: TextStyle(color: Color.fromRGBO(56, 60, 59, 1), fontSize: 20)
            )),
            decoration: BoxDecoration(
                color: Color.fromRGBO(209, 71, 78, 1),
                borderRadius:  BorderRadius.circular(20)
            ),
          ),
            top: MediaQuery.of(context).size.height/2.8,
            left: MediaQuery.of(context).size.width/5.9,
          )
        ],
      ),
    );
  }
}

class Clipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double radius = 20;
    var path = Path()
      ..lineTo(size.width, size.height)
      ..arcToPoint(Offset(size.width, radius))
      ..lineTo(size.width - radius, size.height - radius)
      ..arcToPoint(Offset(size.width - radius, size.height),
          radius: Radius.circular(radius))
      ..lineTo(radius, size.height)
      ..arcToPoint(Offset(0, size.height - radius),
          radius: Radius.circular(radius), clockwise: false)
      ..lineTo(0, radius)
      ..arcToPoint(Offset(radius, 0), radius: Radius.elliptical(40, 20))
      ..close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
