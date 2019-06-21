import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:redshift/uiwidgets/categories.dart';
import 'package:redshift/uiwidgets/searchbox.dart';
import 'package:redshift/assets/assets.dart';
import 'package:redshift/uiwidgets/recommendedcard.dart';

class ExplorePage extends StatefulWidget {
  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: ScreenUtil.instance.setHeight(100),
              ),
              Center(
                child: SearchBox(),
              ),
              SizedBox(
                height: ScreenUtil.instance.setHeight(40),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                child: Text(
                  'CATEGORIES',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: FontSize.fontSize14,
                    fontWeight: FontWeight.w900,
                    color: Color(0xff4A7079),
                  ),
                ),
              ),
              SizedBox(
                height: ScreenUtil.instance.setHeight(12),
              ),
              Categories(),
              SizedBox(
                height: ScreenUtil.instance.setHeight(40),
              ),
              Center(
                child: Recommended(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
