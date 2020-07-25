import 'package:flutter/material.dart';

/// TELA DE HOME
/// Quando clicado em um botão, ele começa a exibir o que é necessário
class Home extends StatefulWidget {
  String title;
  Home ({Key key, this.title}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Stack(
        children: <Widget>[
          new Container(
            child: Text.rich(new TextSpan(text: widget.title)),
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