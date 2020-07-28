import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Mapping extends StatefulWidget {
  int state = 0;

  Mapping ({Key key, this.state}) : super(key: key);
  @override
  _MappingState createState() => _MappingState();
}

class _MappingState extends State<Mapping> {
  Completer<GoogleMapController> _controller = Completer();
  List<BitmapDescriptor> customIcon = List<BitmapDescriptor>(3);
  Set<Marker> markers = Set.from([]);
  List<String> img = ['sanitation', 'food', 'health'];
  List<Image> btImage = List<Image>(3);

  BitmapDescriptor createMarker(context, int j) {
    for (int i = 0; i < 3; i++) {
      if (customIcon[i] == null) {
        ImageConfiguration configuration = createLocalImageConfiguration(
            context);
        BitmapDescriptor.fromAssetImage(
            configuration, 'assets/images/${img[i]}pin.png')
            .then((icon) {
          setState(() {
            customIcon[i] = icon;
          });
        });
      }
    }
    return customIcon[j];
  }

  @override
  void initState() {
    super.initState();

    btImage = [Image.asset('assets/images/sanitation_black.png'),
      Image.asset('assets/images/food.png'),
      Image.asset('assets/images/health.png')];
  }

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Stack(
        children: <Widget>[

          GoogleMap(
            markers: Set.from([Marker(markerId: MarkerId('1'), icon: createMarker(context, widget.state), position: LatLng(37.43296265331129, -122.08832357078792),),
              Marker(markerId: MarkerId('2'), icon: createMarker(context, widget.state), position: LatLng(39.42, -118.08832357078792),),
              Marker(markerId: MarkerId('3'), icon: createMarker(context, widget.state), position: LatLng(31, -125.08832357078792),),
              Marker(markerId: MarkerId('4'), icon: createMarker(context, widget.state), position: LatLng(45, -120.08832357078792),),
              Marker(markerId: MarkerId('5'), icon: createMarker(context, widget.state), position: LatLng(38, -100.08832357078792),)
            ]),
            mapType: MapType.normal,
            initialCameraPosition: _kGooglePlex,
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
          ),
          new Container(
            width: MediaQuery.of(context).size.width,
            height: 90,
            padding: EdgeInsets.only(bottom: 8),
            alignment: Alignment.bottomLeft,
            child: new Stack(
              children: <Widget>[
                new IconButton(icon: Icon(Icons.arrow_back_ios, color: Color.fromRGBO(56, 60, 59, 1),),
                    onPressed: () => Navigator.pop(context)),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: ButtonTheme(
                        child: FlatButton(
                          child: btImage[0],
                          onPressed: () => {setState((){
                            widget.state= 0;
                            btImage = [Image.asset('assets/images/sanitation_black.png'),
                              Image.asset('assets/images/food.png'),
                              Image.asset('assets/images/health.png')];
                          })},
                        ),
                      ),
                      width: 50,
                      height: 50,
                    ),
                    Container(
                      child: ButtonTheme(
                        child: FlatButton(
                          child: btImage[1],
                          onPressed: () => {setState((){
                            widget.state= 1;
                            btImage = [Image.asset('assets/images/sanitation.png'),
                              Image.asset('assets/images/food_black.png'),
                              Image.asset('assets/images/health.png')];
                          })},
                        ),
                      ),
                      width: 50,
                      height: 50,
                    ),
                    Container(
                      child: ButtonTheme(
                        child: FlatButton(
                          child: btImage[2],
                          onPressed: () => {setState((){
                            widget.state= 2;
                            btImage = [Image.asset('assets/images/sanitation.png'),
                              Image.asset('assets/images/food.png'),
                              Image.asset('assets/images/health_black.png')];
                          })},
                        ),
                      ),
                      width: 50,
                      height: 50,
                    )
                  ],
                )
              ],
            ),
            decoration: BoxDecoration(
              color: Color.fromRGBO(209, 71, 78, 1),
            ),
          ),
        ],
      )
    );
  }
}