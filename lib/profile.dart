import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  String nickname;
  Profile({Key key, this.nickname}) : super(key: key);
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  Widget decoration() {
    return ClipPath(
      //clipper: Clipper(),
      child: new Container(
        padding: EdgeInsets.only(top: 70),
        child: new Stack(
          children: <Widget>[
            new Positioned(
              child: new ClipOval(
                child: Image.network(
                    'https://pbs.twimg.com/profile_images/1192936776765181953/WII_Ai_K_400x400.jpg'),
              ),
              height: 150,
              width: 150,
              left: 125,
            ),
            new Container(child: new Text.rich(TextSpan(text: widget.nickname, style: TextStyle(color: Colors.black, fontSize: 30))),
              alignment: Alignment.topCenter,
              padding: EdgeInsets.only(top: 160),),
          ],
        ),
        decoration: BoxDecoration (
          color: Colors.amber,
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
              ],
            ),
            //padding: EdgeInsets.only(top: 50),
            //alignment: Alignment.topCenter,
          ),
          new Container(
            child: IconButton(icon: Icon(Icons.settings, color: Colors.black,size: 30,)),
            padding: EdgeInsets.only(top: 30),
            alignment: Alignment.topRight,
          ),
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
      ..lineTo(size.width-radius, size.height - radius)
      ..arcToPoint(Offset(size.width - radius, size.height),radius: Radius.circular(radius))
      ..lineTo(radius, size.height)
      ..arcToPoint(Offset(0, size.height - radius), radius: Radius.circular(radius), clockwise: false)
      ..lineTo(0, radius)
      ..arcToPoint(Offset(radius, 0), radius: Radius.elliptical(40, 20))
      ..close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}