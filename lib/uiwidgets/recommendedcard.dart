import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Recommended extends StatefulWidget {
  @override
  _RecommendedState createState() => _RecommendedState();
}

class _RecommendedState extends State<Recommended> {
  Color get color => null;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: 365,
        width: MediaQuery.of(context).size.width * 0.80,
        decoration: BoxDecoration(
          color: Colors.redAccent,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.redAccent,
              offset: Offset(0.0, 4.0),
              blurRadius: 10.0,
              spreadRadius: 0.0,
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(
                    FontAwesomeIcons.pray,
                    color: Colors.white,
                    size: 20,
                  ),
                  Icon(
                    FontAwesomeIcons.solidHeart,
                    color: Colors.white,
                    size: 25,
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Text(
                    'Boudhanath Stupa',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Icon(
                    FontAwesomeIcons.locationArrow,
                    color: Colors.white,
                    size: 15,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    '2 km',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  Icon(
                    FontAwesomeIcons.coins,
                    color: Colors.white,
                    size: 15,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    '80',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
