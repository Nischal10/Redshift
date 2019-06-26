import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:redshift/assets/assets.dart';

class AttractionPage extends StatefulWidget {
  @override
  _AttractionPageState createState() => _AttractionPageState();
}

class _AttractionPageState extends State<AttractionPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Icon(
                  FontAwesomeIcons.arrowLeft,
                  color: Color(AppColors.textDark),
                  size: 20.0,
                ),
              ],
            ),
          ),
          SizedBox(height: 20.0),
          Center(
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
            ),
          ),
          SizedBox(height: 12.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  'Boudhanath Stupa',
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Color(AppColors.headers),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Icon(
                  FontAwesomeIcons.pray,
                  size: 15.0,
                  color: Color(AppColors.textDark),
                ),
              ),
            ],
          ),
          SizedBox(height: 8.0),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: Text(
                    'Boudhanath Stupa is a popular stupa in Kathmandu. Located about 11km from the center and the northeastern outskirts of Kathmandu, the stupa has a massive mandala which makes it one of the largest spherical stupas in Nepal.',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Color(AppColors.textDark),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.0),
          RaisedButton(
            disabledColor: Color(AppColors.success),
            onPressed: null,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  FontAwesomeIcons.wikipediaW,
                  size: 15.0,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'Learn More on Wikipedia',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 40.0),
        ],
      ),
    );
  }
}
