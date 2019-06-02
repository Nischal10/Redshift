import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NearbyCard extends StatefulWidget {
  @override
  _NearbyCardState createState() => _NearbyCardState();
}

class _NearbyCardState extends State<NearbyCard> {
  String coins = '20';
  String distance = '1.5 KM';
  String location = 'Patan Durbar Square';

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: 180,
        width: 160,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.blue,
              offset: Offset(1.0, 3.0),
              blurRadius: 5.0,
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(
                    FontAwesomeIcons.coins,
                    color: Colors.white,
                    size: 12,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    '$coins',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Quicksand',
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Icon(
                        FontAwesomeIcons.locationArrow,
                        color: Colors.white,
                        size: 25,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        '1.5 KM',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Quicksand',
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Text('Patan Durbar Square',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w200,
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
