import 'package:flutter/material.dart';
import 'package:redshift/uiwidgets/nearbyCard.dart';
import 'package:redshift/uiwidgets/categories.dart';
import 'package:redshift/uiwidgets/searchbox.dart';
import 'package:redshift/uiwidgets/locationdetailcard.dart';
import 'package:redshift/uiwidgets/recommendedcard.dart';
import 'package:redshift/uiwidgets/locationoverview.dart';
import 'package:redshift/uiwidgets/store_category.dart';

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(12),
                    child: Row(
                      children: <Widget>[
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(height: 40),
                            Text(
                              'NEARBY',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w900,
                                color: Color(0xff4A7079),
                              ),
                            ),
                            SizedBox(height: 12),
                            NearbyCard(),
                            SizedBox(height: 20),
                            Text(
                              'SEARCH BOX',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w900,
                                color: Color(0xff4A7079),
                              ),
                            ),
                            SizedBox(height: 12),
                            SearchBox(),
                            SizedBox(height: 20),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'BY CATEGORY',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w900,
                      color: Color(0xff4A7079),
                    ),
                  ),
                  SizedBox(height: 15),
                  Categories(),
                  SizedBox(height: 30),
                  LocationDetail(),
                  SizedBox(height: 20),
                  Recommended(),
                  SizedBox(height: 20),
                  LOverview(),
                  SizedBox(height: 20),
                  Container(
                    child: Text(
                      'STORE CATEGORIES',
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Quicksand',
                        fontWeight: FontWeight.w900,
                        color: Color(0xff4A7079),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  StoreCategories(),
                  SizedBox(height: 20),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
