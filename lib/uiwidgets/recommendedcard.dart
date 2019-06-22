import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        height: ScreenUtil.instance.setHeight(365.0),
        width: ScreenUtil.instance.setWidth(340.0),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/boudha.png',
            ),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Color(0XFFE36B77).withOpacity(0.6), BlendMode.srcATop),
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Color(0x60E36B77),
              offset: Offset(0.0, 3.0),
              blurRadius: 3.0,
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
                    FontAwesomeIcons.heart,
                    color: Colors.white,
                    size: 20,
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
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
                        SizedBox(height: 10.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              child: Row(
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
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                children: <Widget>[
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
                            ),
                          ],
                        ),
                      ],
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
