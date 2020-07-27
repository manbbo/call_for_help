import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:callforhelp/custom/clippers.dart';

class cadastroComunPage extends StatefulWidget {
  @override
  _cadastroComunPageState createState() => _cadastroComunPageState();
}

class _cadastroComunPageState extends State<cadastroComunPage> {
  bool changed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: Column(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/3.6,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFFF8BBD0),
                        Color(0xFFF8BBD0),
                      ],
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(110),
                    )
                ),
                child: Column(
                  children: <Widget>[
                    Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            bottom: 35,
                            right: 140,
                          ),
                          child: Text('Comunidade',
                            style: TextStyle(
                                color: Colors.pink,
                                fontFamily: '',
                                fontSize: 25
                            ),
                          ),
                        )
                    ),
                  ],
                ),
              ),
              new Container(height: 15),
              Container(
                height: MediaQuery.of(context).size.height/1.5,
                width: MediaQuery.of(context).size.width/1,
                padding: EdgeInsets.only(top: 0, left: 20, bottom: 4, right: 1, ),
                child: Column(
                  children: <Widget>[
                    Container(
                      width:MediaQuery.of(context).size.width/1.2,
                      height: 30,
                      padding: EdgeInsets.only(
                        top: 0, left: 20, bottom: 4, right: 50,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                              Radius.circular(50)
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 50,
                            )
                          ]
                      ),
                      child: TextField(
                          decoration: InputDecoration(
                            icon: Icon(Icons.contact_mail, color: Colors.grey,),
                            hintText:'CPF',

                          )
                      ),
                    ),
                    new Container(height: 15),
                    Container(
                      width:MediaQuery.of(context).size.width/1.2,
                      height: 30,
                      padding: EdgeInsets.only(
                        top: 0, left: 20, bottom: 4,right: 50,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                              Radius.circular(50)
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 50,
                            )
                          ]
                      ),
                      child: TextField(
                          decoration: InputDecoration(
                            icon: Icon(Icons.person_outline, color: Colors.grey,),
                            hintText:'Name',

                          )
                      ),
                    ),
                    Container(
                      width:MediaQuery.of(context).size.width/1.2,
                      height: 30,
                      margin: EdgeInsets.only(top: 25),
                      padding: EdgeInsets.only(
                        top: 0, left: 20, bottom: 4,right: 50,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                              Radius.circular(50)
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 50,
                            )
                          ]
                      ),

                      child: TextField(
                          decoration: InputDecoration(
                            icon: Icon(Icons.local_phone, color: Colors.grey,),
                            hintText:'Telephone',

                          )
                      ),
                    ),
                    new Container(height: 15),
                    Container(
                      width:MediaQuery.of(context).size.width/1.2,
                      height: 30,
                      padding: EdgeInsets.only(
                        top: 0, left: 20, bottom: 4, right: 50,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                              Radius.circular(50)
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 50,
                            )
                          ]
                      ),
                      child: TextField(
                          decoration: InputDecoration(
                            icon: Icon(Icons.location_on, color: Colors.grey,),
                            hintText:'Andress',

                          )
                      ),
                    ),
                    new Container(height: 15),
                    Container(
                      width:MediaQuery.of(context).size.width/1.2,
                      height: 30,
                      padding: EdgeInsets.only(
                        top: 0, left: 20, bottom: 4, right: 50,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                              Radius.circular(50)
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 50,
                            )
                          ]
                      ),
                      child: TextField(
                          decoration: InputDecoration(
                            icon: Icon(Icons.description, color: Colors.grey,),
                            hintText:'Description ',

                          )
                      ),
                    ),
                    new Container(height: 15),
                    Container(
                      width:MediaQuery.of(context).size.width/1.2,
                      height: 30,
                      padding: EdgeInsets.only(
                        top: 0, left: 20, bottom: 4, right: 50,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                              Radius.circular(50)
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 50,
                            )
                          ]
                      ),
                      child: TextField(
                          decoration: InputDecoration(
                            icon: Icon(Icons.vpn_key, color: Colors.grey,),
                            hintText:'PassWord ',

                          )
                      ),
                    ),
                    new Container(height: 15),
                    Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 12,
                              right: 32
                          ),
                          child: Text('Já tem conta?',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        )
                    ),
                    new Container(height: 15),
                    Container(
                        height: 30,
                        width: 100,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                                  Color(0xFFF8BBD0),
                                  Color(0xFFF8BBD0),
                                ]
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(50),
                            )
                        ),
                        child:Center(
                          child: Text('Criar conta'.toUpperCase(),
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),)
                    )
                  ],
                ),
              )
            ],
          ),
        )
    );
  }
}
