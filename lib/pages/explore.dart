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
              Stack(
                children: <Widget>[
                  Center(
                    child: Container(
                      height: ScreenUtil.instance.setHeight(385.0),
                      width: ScreenUtil.instance.setWidth(290.0),
                      decoration: BoxDecoration(
                        color: Color(AppColors.neutral),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            color: Color(0x605873DE),
                            offset: Offset(0.0, 3.0),
                            blurRadius: 3.0,
                            spreadRadius: 0.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      height: ScreenUtil.instance.setHeight(375.0),
                      width: ScreenUtil.instance.setWidth(315.0),
                      decoration: BoxDecoration(
                        color: Color(AppColors.primary),
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
                  Center(
                    child: Recommended(),
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
