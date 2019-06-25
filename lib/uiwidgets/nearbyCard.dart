import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:redshift/assets/design_screenSize.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NearbyCard extends StatefulWidget {
  final String coins;
  final String distance;
  final String location;
  final String imageURL;

  const NearbyCard({
    Key key,
    @required this.coins,
    @required this.distance,
    @required this.location,
    @required this.imageURL,
  }) : super(key: key);

  @override
  _NearbyCardState createState() => _NearbyCardState();
}

class _NearbyCardState extends State<NearbyCard> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(
        width: ScreenSize.screenWidth,
        height: ScreenSize.screenHeight,
        allowFontScaling: true)
      ..init(context);
    return Material(
      child: Container(
        margin: const EdgeInsets.only(right: 10.0),
        height: ScreenUtil.instance.setHeight(220.0),
        width: ScreenUtil.instance.setHeight(220.0),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              widget.imageURL,
            ),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Color(0XFFE36B77).withOpacity(0.6), BlendMode.srcATop),
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
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
                    '${widget.coins}',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.bold,
                    ),
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
                        '${widget.distance}',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Quicksand',
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Text(
                    '${widget.location}',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
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
