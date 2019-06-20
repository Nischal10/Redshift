import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:redshift/assets/assets.dart';
import 'package:redshift/uiwidgets/level_widget/level_widget.dart';

class GameScaffold extends StatefulWidget {
  final Widget child;
  const GameScaffold({Key key, @required this.child}) : super(key: key);
  @override
  _GameScaffoldState createState() => _GameScaffoldState();
}

class _GameScaffoldState extends State<GameScaffold> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(
      width: ScreenSize.screenWidth,
      height: ScreenSize.screenHeight,
    )..init(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 255, 255, 0),
        elevation: 0,
        automaticallyImplyLeading: false,
        centerTitle: false,
        title: LevelWidget(
          level: 4,
          percent: 30,
        ),
        actions: <Widget>[
          Icon(FontAwesomeIcons.award, color: Colors.red),
          SizedBox(
            width: ScreenUtil().setWidth(10),
          ),
          Center(
            child: Text(
              '12',
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
              '12',
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
      ),
      key: widget.key,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xffe36b77),
        onPressed: () {},
        tooltip: 'Go to Map',
        child: Icon(
          FontAwesomeIcons.locationArrow,
          color: Colors.white,
          size: FontSize.fontSize16,
        ),
        elevation: 2.0,
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 24.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                  left: ScreenUtil().setWidth(5),
                ),
                child: Icon(
                  FontAwesomeIcons.home,
                  color: Color(0xffC3C7C6),
                  size: FontSize.fontSize20,
                ),
              ),
              Icon(
                FontAwesomeIcons.compass,
                color: Color(0xffC3C7C6),
                size: FontSize.fontSize20,
              ),
              Icon(
                FontAwesomeIcons.store,
                color: Color(0xffC3C7C6),
                size: FontSize.fontSize20,
              ),
              Padding(
                padding: EdgeInsets.only(
                  right: ScreenUtil().setWidth(5),
                ),
                child: Icon(
                  FontAwesomeIcons.user,
                  color: Color(0xffC3C7C6),
                  size: FontSize.fontSize20,
                ),
              ),
            ],
          ),
        ),
        color: Colors.white,
      ),
      body: widget.child,
    );
  }
}
