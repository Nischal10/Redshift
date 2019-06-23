import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:redshift/assets/assets.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:redshift/models/user.dart' as prefix0;

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class UserDetails {
  final String userName;
  final String photoUrl;
  UserDetails(this.userName, this.photoUrl);
}

class _SplashScreenState extends State<SplashScreen> {
  String _animationName = 'Untitled';
  bool loggedIn = true;

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  Future<FirebaseUser> _signIn(BuildContext context) async {
    final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;

    final AuthCredential credential = GoogleAuthProvider.getCredential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    final FirebaseUser user = await _auth.signInWithCredential(credential);
    return user;
  }

  @override
  void initState() {
    checkSigninAndRedirect();
    super.initState();
  }

  void checkSigninAndRedirect() async {
    loggedIn = await _googleSignIn.isSignedIn();
    setState(() {});
    if (loggedIn)
      Navigator.of(context).pushNamedAndRemoveUntil(
        AppRoutes.GAME_HOME,
        (predicate) => false,
      );
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(
        width: ScreenSize.screenWidth,
        height: ScreenSize.screenHeight,
        allowFontScaling: true)
      ..init(context);
    return Provider<GoogleSignIn>.value(
      value: _googleSignIn,
      child: Material(
        child: Stack(
          children: <Widget>[
            Container(
              width: ScreenUtil.getInstance().setWidth(ScreenSize.screenWidth),
              height:
                  ScreenUtil.getInstance().setHeight(ScreenSize.screenHeight),
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
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: AnimatedContainer(
                duration: Duration(milliseconds: 300),
                curve: Curves.ease,
                width:
                    ScreenUtil.getInstance().setWidth(ScreenSize.screenWidth),
                height: ScreenUtil.getInstance().setHeight(400),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Redshift',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                      ),
                    ),
                    SizedBox(
                      height: 80,
                    ),
                    if (!loggedIn) ...[
                      Material(
                        type: MaterialType.transparency,
                        child: InkWell(
                          splashColor: Colors.red,
                          onTap: () => _signIn(context).then(
                                (FirebaseUser user) {
                                  print('----------------------------------');
                                  print(user.displayName);
                                  print(user.photoUrl);
                                  print(user.email);
                                  Provider.of<prefix0.User>(context).create(
                                    user.displayName,
                                    user.email,
                                    user.photoUrl,
                                  );
                                  print('----------------------------------');
                                  Navigator.of(context).pushNamedAndRemoveUntil(
                                    AppRoutes.GAME_HOME,
                                    (predicate) => false,
                                  );
                                },
                              ),
                          child: Container(
                            height: 48,
                            width: ScreenUtil.getInstance().setHeight(812),
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(0, 0, 0, 0.2),
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Row(
                                children: <Widget>[
                                  Icon(
                                    FontAwesomeIcons.google,
                                    color: Colors.white,
                                    size: 24,
                                  ),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Text(
                                    'Sign in with Google',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
