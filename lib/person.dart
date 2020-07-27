import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:callforhelp/custom/clippers.dart';

class personPage extends StatefulWidget {
  @override
  _pessoaPageState createState() => _pessoaPageState();
}

class _pessoaPageState extends State<personPage> {
  bool changed = false;
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

              //perfis circulares
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    ClipRect(
                      child: Container(
                        height: 100,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(300),
                        ),
                        padding: EdgeInsets.only(top: 0, left: 120, bottom: 4, right: 1, ),
                        child: Image.asset('assets/images/empresas.png'),
                      ),
                    ),
                    Container(
                        height: 80,
                        width: 130,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(100),
                            )
                        ),
                        child:Center(
                          child: Text('Empresa'.toUpperCase(),
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),)
                    )
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    ClipRect(
                      child: Container(
                        height: 100,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(300),
                        ),
                        padding: EdgeInsets.only(top: 0, left: 120, bottom: 4, right: 1, ),
                        child: Image.asset('assets/images/pesquisador.png'),
                      ),
                    ),
                    Container(
                        height: 25,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(100),
                            )
                        ),
                        child:Center(
                          child: Text('Pesquisador'.toUpperCase(),
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),)
                    )
                  ],
                ),
              ),
            ],
        ),
    );
  }
}
