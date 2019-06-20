import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:redshift/assets/assets.dart';
import 'package:redshift/uiwidgets/categories.dart';
import 'package:redshift/uiwidgets/game_app_bar/game_app_bar.dart';
import 'package:redshift/pages/alluiwidgets.dart';
import 'package:redshift/uiwidgets/nearbyCard.dart';
import 'package:redshift/uiwidgets/recommendedcard.dart';
import 'package:redshift/uiwidgets/searchbox.dart';
import 'package:redshift/uiwidgets/store_category.dart';

class GameScaffold extends StatefulWidget {
  final Widget child;
  const GameScaffold({Key key, @required this.child}) : super(key: key);
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
        onPressed: () {},
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
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SearchBox(),
                    SizedBox(height: 40.0),
                    Text(
                      'NEARBY',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Quicksand',
                        color: Color(0xff4A7079),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    NearbyCard(),
                    SizedBox(height: 40.0),
                    Text(
                      'CATEGORIES',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Quicksand',
                        color: Color(0xff4A7079),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Categories(),
                  ],
                ),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SearchBox(),
                    SizedBox(height: 40.0),
                    Text(
                      'BY CATEGORY',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Quicksand',
                        color: Color(0xff4A7079),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Categories(),
                    SizedBox(height: 40.0),
                    Recommended(),
                  ],
                ),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SearchBox(),
                    SizedBox(height: 40.0),
                    Text(
                      'SALE',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Quicksand',
                        color: Color(0xff4A7079),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Container(
                      height: 160.0,
                      width: MediaQuery.of(context).size.width * 0.80,
                      decoration: BoxDecoration(
                        color: Color(0xffFA9384),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            color: Color(0xfffa9384),
                            offset: Offset(0.0, 3.0),
                            blurRadius: 1.0,
                            spreadRadius: 0.0,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 40.0),
                    StoreCategories(),
                    SizedBox(height: 40.0),
                    Column(
                      children: <Widget>[
                        Container(
                          height: 120.0,
                          width: MediaQuery.of(context).size.width * 0.80,
                          decoration: BoxDecoration(
                            color: Color(0xff5873DE),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              height: 120.0,
                              width: MediaQuery.of(context).size.width * 0.39,
                              decoration: BoxDecoration(
                                color: Color(0xffE36B77),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                            ),
                            SizedBox(width: 10.0),
                            Container(
                              height: 120.0,
                              width: MediaQuery.of(context).size.width * 0.39,
                              decoration: BoxDecoration(
                                color: Color(0xff6CAC9C),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.blue[300],
              ),
            ],
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: GameAppBar(
              badge: 2,
              coin: 200,
              level: 5,
              levelProgress: 50,
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
