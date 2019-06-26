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

  GoogleMapController mapController;

  void initState() {
    super.initState();
  }

  void onMapCreated(controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: double.infinity,
            child: StreamBuilder<Position>(
              stream: Geolocator().getPositionStream(),
              builder: (context, snapshot) {
                print(snapshot);
                if (snapshot.hasData)
                  return GoogleMap(
                    mapType: MapType.hybrid,
                    onMapCreated: onMapCreated,
                    initialCameraPosition: CameraPosition(
                      target: LatLng(
                        snapshot.data.latitude,
                        snapshot.data.longitude,
                      ),
                      zoom: 15,
                    ),
                    markers: {
                      Marker(
                        markerId: MarkerId('user'),
                        position: LatLng(
                          snapshot.data.latitude,
                          snapshot.data.longitude,
                        ),
                      ),
                    },
                  );
                else
                  return Center(
                    child: Text(
                      'loading please wait',
                    ),
                  );
              },
            ),
          ),
        ],
      ),
    );
  }
}
