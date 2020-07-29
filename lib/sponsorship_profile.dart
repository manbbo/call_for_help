import 'package:callforhelp/gamification.dart';
import 'package:callforhelp/sospage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SponsorProfile extends StatefulWidget {
  String nickname, name;
  BuildContext context;
  SponsorProfile({Key key, this.nickname, this.name, this.context}) : super(key: key);
  @override
  _SponsorProfileState createState() => _SponsorProfileState();
}

class _SponsorProfileState extends State<SponsorProfile> {
  Widget decoration() {
    return ClipPath(
      //clipper: Clipper(),
      child: new Container(
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Container(
              child: new ClipOval(
                child: Image.asset(
                    'assets/images/cacique.png'),
              ),
              height: 100,
              width: 100,
              alignment: Alignment.centerLeft,
            ),
            new Container( width: 5,),
            new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Container(
                  child: new Text.rich(TextSpan(
                      text: widget.name,
                      style: TextStyle(color: Color.fromRGBO(56, 60, 59, 1), fontSize: 25))),
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
    return new Stack(
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
          height: (MediaQuery.of(widget.context).size.height/2) - 50,
          width: MediaQuery.of(widget.context).size.width,
          top: (MediaQuery.of(widget.context).size.height/2) - 40,
          child: new GestureDetector(
            child: new AchievementList(
              achievements: [
                new Achievement(
                  title: 'kg of Rice needed',
                  quantity: 10,
                ),
                new Achievement(
                  title: 'kg of Beans needed',
                  quantity: 1,
                ),
                new Achievement(
                  title: 'packs of Medication needed',
                  quantity: 5,
                ),
              ],
            ),
            onTap: () => {

            },
          ),
        ),
      ],
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
