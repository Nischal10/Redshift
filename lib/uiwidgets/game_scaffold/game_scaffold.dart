import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:redshift/assets/assets.dart';
import 'package:redshift/models/user.dart';
import 'package:redshift/pages/explore.dart';
import 'package:redshift/pages/home.dart';
import 'package:redshift/pages/maingame.dart';
import 'package:redshift/pages/profile.dart';
import 'package:redshift/pages/store.dart';
import 'package:redshift/uiwidgets/game_app_bar/game_app_bar.dart';

class GameScaffold extends StatefulWidget {
  const GameScaffold({Key key}) : super(key: key);
  @override
  _GameScaffoldState createState() => _GameScaffoldState();
}

class _GameScaffoldState extends State<GameScaffold> {
  final PageController pageController = PageController();

  int selectedPage = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    pageController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(
      width: ScreenSize.screenWidth,
      height: ScreenSize.screenHeight,
    )..init(context);

    return Scaffold(
      key: widget.key,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xffe36b77),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MapPage()),
          );
        },
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
                child: InkWell(
                  onTap: () {
                    _pageHandler(0);
                  },
                  radius: ScreenUtil().setWidth(200),
                  borderRadius: BorderRadius.circular(
                    ScreenUtil().setWidth(200),
                  ),
                  splashColor: Color(AppColors.primary),
                  child: Icon(
                    FontAwesomeIcons.home,
                    color: selectedPage == 0
                        ? Color(AppColors.primary)
                        : Color(0xffC3C7C6),
                    size: FontSize.fontSize20,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  _pageHandler(1);
                },
                radius: ScreenUtil().setWidth(200),
                borderRadius: BorderRadius.circular(
                  ScreenUtil().setWidth(200),
                ),
                splashColor: Color(AppColors.primary),
                child: Icon(
                  FontAwesomeIcons.compass,
                  color: selectedPage == 1
                      ? Color(AppColors.primary)
                      : Color(0xffC3C7C6),
                  size: FontSize.fontSize24,
                ),
              ),
              SizedBox(width: ScreenUtil().setWidth(1)),
              InkWell(
                onTap: () {
                  _pageHandler(2);
                },
                radius: ScreenUtil().setWidth(200),
                borderRadius: BorderRadius.circular(
                  ScreenUtil().setWidth(200),
                ),
                splashColor: Color(AppColors.primary),
                child: Icon(
                  FontAwesomeIcons.store,
                  color: selectedPage == 2
                      ? Color(AppColors.primary)
                      : Color(0xffC3C7C6),
                  size: FontSize.fontSize20,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  right: ScreenUtil().setWidth(5),
                ),
                child: InkWell(
                  onTap: () {
                    _pageHandler(3);
                  },
                  radius: ScreenUtil().setWidth(200),
                  borderRadius: BorderRadius.circular(
                    ScreenUtil().setWidth(200),
                  ),
                  splashColor: Color(AppColors.primary),
                  child: Icon(
                    FontAwesomeIcons.user,
                    color: selectedPage == 3
                        ? Color(AppColors.primary)
                        : Color(0xffC3C7C6),
                    size: FontSize.fontSize20,
                  ),
                ),
              ),
            ],
          ),
        ),
        color: Colors.white,
      ),
      body: Stack(
        children: <Widget>[
          PageView(
            controller: pageController,
            onPageChanged: (page) {
              setState(() {
                selectedPage = page;
              });
            },
            children: <Widget>[
              HomePage(),
              ExplorePage(),
              StorePage(),
              ProfilePage(),
            ],
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: StreamBuilder<QuerySnapshot>(
              stream: Firestore.instance
                  .collection('user-data')
                  .where('uid', isEqualTo: Provider.of<User>(context).uid)
                  .snapshots(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  Map<String, dynamic> userData =
                      snapshot.data.documents.first.data;
                  return GameAppBar(
                    badge: userData['badges'],
                    coin: userData['coins'],
                    level: userData['level'],
                    levelProgress: userData['points'].toDouble(),
                  );
                }
                return GameAppBar(
                  badge: 0,
                  coin: 0,
                  level: 1,
                  levelProgress: 0,
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void _pageHandler(int pageNumber) {
    pageController.animateToPage(
      pageNumber,
      curve: Curves.easeIn,
      duration: Duration(milliseconds: 300),
    );
  }
}
