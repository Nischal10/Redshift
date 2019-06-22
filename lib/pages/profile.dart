import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:redshift/assets/assets.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
                child: Container(
                  width: 100.0,
                  height: 100.0,
                  decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/images/akash.jpg"),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: ScreenUtil.instance.setHeight(12),
              ),
              Center(
                child: Text(
                  'Aakash Raj Dahal',
                  style: TextStyle(
                    fontSize: FontSize.fontSize26,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff4A7079),
                  ),
                ),
              ),
              SizedBox(
                height: ScreenUtil.instance.setHeight(20),
              ),
              Center(
                child: Container(
                  height: ScreenUtil.instance.setHeight(100.0),
                  width: ScreenUtil.instance.setWidth(340.0),
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
              SizedBox(height: 40.0),
              Padding(
                padding: const EdgeInsets.only(left: 26.0),
                child: Text(
                  'LIFETIME STATISTICS',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: FontSize.fontSize14,
                    fontWeight: FontWeight.w900,
                    color: Color(0xff4A7079),
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: ScreenUtil.instance.setHeight(190.0),
                    width: ScreenUtil.instance.setWidth(160.0),
                    decoration: BoxDecoration(
                      color: Color(AppColors.success),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Container(
                    height: ScreenUtil.instance.setHeight(190.0),
                    width: ScreenUtil.instance.setWidth(160.0),
                    decoration: BoxDecoration(
                      color: Color(AppColors.neutral),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: ScreenUtil.instance.setHeight(190.0),
                    width: ScreenUtil.instance.setWidth(160.0),
                    decoration: BoxDecoration(
                      color: Color(AppColors.error),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Container(
                    height: ScreenUtil.instance.setHeight(190.0),
                    width: ScreenUtil.instance.setWidth(160.0),
                    decoration: BoxDecoration(
                      color: Color(AppColors.headers),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40.0),
            ],
          ),
        ),
      ),
    );
  }
}
