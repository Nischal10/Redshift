import 'package:flutter/material.dart';

class LocationDetail extends StatefulWidget {
  @override
  _LocationDetailState createState() => _LocationDetailState();
}

class _LocationDetailState extends State<LocationDetail> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.80,
          color: Colors.blue,
          height: 250,
        ),
    );
  }
}
