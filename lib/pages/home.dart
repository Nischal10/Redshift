import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:redshift/uiwidgets/categories.dart';
import 'package:redshift/uiwidgets/locationdetailcard.dart';
import 'package:redshift/uiwidgets/nearbyCard.dart';
import 'package:redshift/uiwidgets/searchbox.dart';
import 'package:redshift/assets/assets.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: ScreenUtil.instance.setHeight(600.0),
              child: Stack(
                children: <Widget>[
                  Container(
                    height: ScreenUtil.instance.setHeight(540.0),
                    child: Image.asset(
                      'assets/images/ktm.jpeg',
                      fit: BoxFit.cover,
                      color: Colors.black.withOpacity(0.4),
                      colorBlendMode: BlendMode.multiply,
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      SizedBox(
                        height: ScreenUtil.instance.setHeight(100),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            FontAwesomeIcons.mapMarkerAlt,
                            color: Colors.white,
                            size: FontSize.fontSize16,
                          ),
                          SizedBox(
                            width: ScreenUtil.instance.setWidth(10),
                          ),
                          Text(
                            'Kathmandu, Nepal',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: FontSize.fontSize20,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: ScreenUtil.instance.setHeight(30),
                      ),
                      LocationDetail(),
                    ],
                  ),
                  Positioned(
                    left: MediaQuery.of(context).size.width * 0.05,
                    top: ScreenUtil.instance.setHeight(520),
                    child: SearchBox(),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(12),
              child: Text(
                'NEARBY',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: FontSize.fontSize12,
                  fontWeight: FontWeight.w900,
                  color: Color(0xff4A7079),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                height: ScreenUtil.instance.setHeight(240.0),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[NearbyCard(), NearbyCard(), NearbyCard()],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
