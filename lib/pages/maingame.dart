import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';

// https://medium.com/flutter-community/build-a-location-service-in-flutter-367a1b212f7a
// Current Implementation(uses geolocater plugin): https://github.com/rajayogan/flutter-googlemaps-geolocation/blob/master/lib/main.dart

class MapPage extends StatefulWidget {
  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  bool mapToggle = false;
  var currentLocation;

  GoogleMapController mapController;

  void initState() {
    super.initState();
    Geolocator().getCurrentPosition().then((currloc) {
      setState(() {
        currentLocation = currloc;
        mapToggle = true;
      });
    });
  }

  void onMapCreated(controller) {
    setState(() {
      mapController = controller;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: double.infinity,
          height: double.infinity,
          child: mapToggle
              ? GoogleMap(
                  mapType: MapType.hybrid,
                  onMapCreated: onMapCreated,
                  initialCameraPosition: CameraPosition(
                    target: LatLng(
                        currentLocation.latitude, currentLocation.longitude),
                        zoom: 10,
                  ),
                )
              : Center(
                  child: Text('loading please wait'),
                ),
        ),
      ],
    );
  }
}
