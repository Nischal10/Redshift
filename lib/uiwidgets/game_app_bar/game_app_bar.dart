import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:redshift/assets/assets.dart';
import 'package:redshift/uiwidgets/level_widget/level_widget.dart';

class GameAppBar extends StatelessWidget {
  final int badge;
  final int coin;
  final int level;
  final double levelProgress;

  const GameAppBar({
    Key key,
    @required this.badge,
    @required this.coin,
    @required this.level,
    @required this.levelProgress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(
      width: ScreenSize.screenWidth,
      height: ScreenSize.screenHeight,
    )..init(context);

    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      automaticallyImplyLeading: false,
      centerTitle: false,
      title: LevelWidget(
        level: level,
        percent: levelProgress,
      ),
      actions: <Widget>[
        Icon(
          FontAwesomeIcons.award,
          color: Colors.red,
        ),
        SizedBox(
          width: ScreenUtil().setWidth(10),
        ),
        Center(
          child: Text(
            '$badge',
            style: TextStyle(
              fontSize: FontSize.fontSize12,
              color: Colors.black,
            ),
          ),
        ),
        SizedBox(
          width: ScreenUtil().setWidth(15),
        ),
        Icon(FontAwesomeIcons.coins, color: Colors.red),
        SizedBox(
          width: ScreenUtil().setWidth(10),
        ),
        Center(
          child: Text(
            '$coin',
            style: TextStyle(
              fontSize: FontSize.fontSize12,
              color: Colors.black,
            ),
          ),
        ),
        SizedBox(
          width: ScreenUtil().setWidth(20),
        )
      ],
    );
  }
}