import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';
import 'package:redshift/assets/assets.dart';
import 'package:redshift/models/user.dart';
import 'package:redshift/uiwidgets/attraction_page.dart';

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
                      image: NetworkImage(
                        Provider.of<User>(context).avatar,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: ScreenUtil.instance.setHeight(12),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    Provider.of<User>(context).name,
                    style: TextStyle(
                      fontSize: FontSize.fontSize26,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff4A7079),
                    ),
                  ),
                  IconButton(
                    onPressed: () async {
                      GoogleSignIn _g = GoogleSignIn();
                      await _g.signOut();
                      Navigator.of(context).pushNamedAndRemoveUntil(
                        AppRoutes.ROOT,
                        (predicate) => false,
                      );
                    },
                    icon: Icon(
                      FontAwesomeIcons.signOutAlt,
                      color: Color(AppColors.headers),
                      size: 15.0,
                    ),
                  ),
                ],
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
                  child: Center(
                    child: Text(
                      'You are Level 1',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                    ),
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
                    height: ScreenUtil.instance.setHeight(220.0),
                    width: ScreenUtil.instance.setWidth(160.0),
                    decoration: BoxDecoration(
                      color: Color(AppColors.success),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.shoePrints,
                          color: Color(0xff4E7E72),
                          size: 40.0,
                        ),
                        SizedBox(height: 30.0),
                        Text(
                          '15kms',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 26.0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          'distance travelled',
                          style: TextStyle(color: Colors.white, fontSize: 15.0),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Container(
                    height: ScreenUtil.instance.setHeight(220.0),
                    width: ScreenUtil.instance.setWidth(160.0),
                    decoration: BoxDecoration(
                      color: Color(AppColors.neutral),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.mapMarker,
                          color: Color(0xff384B97),
                          size: 40.0,
                        ),
                        SizedBox(height: 30.0),
                        Text(
                          '90',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 26.0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          'places discovered',
                          style: TextStyle(color: Colors.white, fontSize: 15.0),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: ScreenUtil.instance.setHeight(220.0),
                    width: ScreenUtil.instance.setWidth(160.0),
                    decoration: BoxDecoration(
                      color: Color(AppColors.error),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.coins,
                          color: Color(0xffC57468),
                          size: 40.0,
                        ),
                        SizedBox(height: 30.0),
                        Text(
                          '800',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 26.0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          'points earned',
                          style: TextStyle(color: Colors.white, fontSize: 15.0),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Container(
                    height: ScreenUtil.instance.setHeight(220.0),
                    width: ScreenUtil.instance.setWidth(160.0),
                    decoration: BoxDecoration(
                      color: Color(AppColors.headers),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.commentAlt,
                          color: Color(0xff222D46),
                          size: 40.0,
                        ),
                        SizedBox(height: 30.0),
                        Text(
                          '5',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 26.0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          'reviews posted',
                          style: TextStyle(color: Colors.white, fontSize: 15.0),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40.0),
              AttractionPage(),
            ],
          ),
        ),
      ),
    );
  }
}
