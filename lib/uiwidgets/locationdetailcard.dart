import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:redshift/assets/assets.dart';

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
        height: ScreenUtil.instance.setHeight(310),
        decoration: BoxDecoration(
          color: Color(0XFF5873DE),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              offset: Offset(0.0, 4.0),
              blurRadius: 10.0,
              spreadRadius: 0.0,
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    'Stats',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'About',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: [
                      Icon(
                        FontAwesomeIcons.pray,
                        color: Colors.white,
                        size: FontSize.fontSize20,
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 8),
                        child: Text(
                          '200+',
                          style: TextStyle(
                            fontSize: FontSize.fontSize16,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          'temples',
                          style: TextStyle(
                            fontSize: FontSize.fontSize12,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        FontAwesomeIcons.mountain,
                        color: Colors.white,
                        size: FontSize.fontSize20,
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 8),
                        child: Text(
                          '32+',
                          style: TextStyle(
                            fontSize: FontSize.fontSize16,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          'nature',
                          style: TextStyle(
                            fontSize: FontSize.fontSize12,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        FontAwesomeIcons.building,
                        color: Colors.white,
                        size: FontSize.fontSize20,
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 8),
                        child: Text(
                          '150+',
                          style: TextStyle(
                            fontSize: FontSize.fontSize16,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          'hotels',
                          style: TextStyle(
                            fontSize: FontSize.fontSize12,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        FontAwesomeIcons.utensils,
                        color: Colors.white,
                        size: FontSize.fontSize20,
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 8),
                        child: Text(
                          '3.2k+',
                          style: TextStyle(
                            fontSize: FontSize.fontSize16,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          'eateries',
                          style: TextStyle(
                            fontSize: FontSize.fontSize12,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        FontAwesomeIcons.glassCheers,
                        color: Colors.white,
                        size: FontSize.fontSize20,
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 8),
                        child: Text(
                          '5+',
                          style: TextStyle(
                            fontSize: FontSize.fontSize16,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          'events',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                height: ScreenUtil.instance.setHeight(100),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(4),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(6),
                        child: Image.asset(
                          'assets/images/patan.jpg',
                          fit: BoxFit.cover,
                          width: ScreenUtil.instance.setWidth(80),
                          height: ScreenUtil.instance.setHeight(100),
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        'Patan Durbar Square',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
