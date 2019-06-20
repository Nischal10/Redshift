import 'package:flutter/material.dart';
import 'package:redshift/assets/design_screenSize.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flare_flutter/flare_actor.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String _animationName = 'Untitled';

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(
        width: ScreenSize.screenWidth,
        height: ScreenSize.screenHeight,
        allowFontScaling: true)
      ..init(context);
    return Material(
      child: Container(
        width: ScreenUtil.getInstance().setWidth(ScreenSize.screenWidth),
        height: ScreenUtil.getInstance().setHeight(ScreenSize.screenHeight),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0, 1],
            colors: [
              Color(0xffff5e62),
              Color(0xffff9966),
            ],
          ),
        ),
        child: FlareActor(
          'assets/animations/redshift.flr',
          alignment: Alignment.bottomCenter,
          fit: BoxFit.cover,
          animation: _animationName,
          isPaused: false,
        ),
      ),
    );
  }
}
