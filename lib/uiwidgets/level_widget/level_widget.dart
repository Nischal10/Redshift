import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:redshift/assets/assets.dart';

class LevelWidget extends StatelessWidget {
  final int level;
  final double percent;
  final double maxWidth = 100;

  LevelWidget({
    Key key,
    @required this.level,
    @required this.percent,
  }) : super(key: key) {
    assert(percent <= 100);
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(
      width: ScreenSize.screenWidth,
      height: ScreenSize.screenHeight,
    )..init(context);

    return Stack(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: ScreenUtil().setHeight(4),
            left: ScreenUtil().setWidth(20),
          ),
          width: ScreenUtil().setWidth(maxWidth),
          height: ScreenUtil().setHeight(20),
          decoration: BoxDecoration(
            border: Border.all(
              color: Color(AppColors.primary),
              style: BorderStyle.solid,
              width: ScreenUtil().setSp(1.4),
            ),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(
                ScreenUtil().setHeight(20),
              ),
              bottomRight: Radius.circular(
                ScreenUtil().setHeight(20),
              ),
            ),
          ),
        ),
        AnimatedContainer(
          duration: Duration(
            milliseconds: 300,
          ),
          curve: Curves.easeIn,
          margin: EdgeInsets.only(
            top: ScreenUtil().setHeight(4),
            left: ScreenUtil().setWidth(20),
          ),
          width: ScreenUtil().setWidth(percent),
          height: ScreenUtil().setHeight(20),
          decoration: BoxDecoration(
            color: Color(AppColors.primary),
            border: Border.all(
              color: Color(AppColors.primary),
              style: BorderStyle.solid,
              width: ScreenUtil().setSp(1.4),
            ),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(
                ScreenUtil().setHeight(20),
              ),
              bottomRight: Radius.circular(
                ScreenUtil().setHeight(20),
              ),
            ),
          ),
        ),
        AnimatedContainer(
          duration: Duration(
            milliseconds: 300,
          ),
          curve: Curves.easeIn,
          alignment: Alignment.center,
          width: ScreenUtil().setHeight(30),
          height: ScreenUtil().setHeight(30),
          decoration: BoxDecoration(
            color: Color(AppColors.primary),
            borderRadius: BorderRadius.circular(
              ScreenUtil().setHeight(30),
            ),
          ),
          child: Text(
            '$level',
            style: TextStyle(
              color: Colors.white,
              fontSize: FontSize.fontSize12,
            ),
          ),
        ),
      ],
    );
  }
}
