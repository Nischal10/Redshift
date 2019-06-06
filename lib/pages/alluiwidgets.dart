import 'package:flutter/material.dart';
import 'package:redshift/uiwidgets/nearbyCard.dart';
import 'package:redshift/uiwidgets/categories.dart';
import 'package:redshift/uiwidgets/searchbox.dart';
import 'package:redshift/uiwidgets/locationdetailcard.dart';

class Allui extends StatefulWidget {
  @override
  _AlluiState createState() => _AlluiState();
}

class _AlluiState extends State<Allui> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(12),
                child: Row(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 40),
                        Text(
                          'NEARBY CARD',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w900,
                              color: Color(0xff4A7079)),
                        ),
                        SizedBox(height: 12),
                        NearbyCard(),
                        SizedBox(height: 20),
                        Text(
                          'CATEGORIES',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w900,
                              color: Color(0xff4A7079)),
                        ),
                        SizedBox(height: 12),
                        Categories(),
                        SizedBox(height: 20),
                        Text(
                          'SEARCH BOX',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w900,
                              color: Color(0xff4A7079)),
                        ),
                        SizedBox(height: 12),
                        SearchBox(),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
