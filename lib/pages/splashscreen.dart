import 'package:flutter/material.dart';
import 'package:redshift/designDocs/app_asset.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatefulWidget{

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>{
  
  @override
  Widget build(BuildContext context){
    ScreenUtil.instance = ScreenUtil(
        width: ScreenSize.screenWidth,
        height: ScreenSize.screenHeight,
        allowFontScaling: true)
      ..init(context);
    return Material();
  }
}