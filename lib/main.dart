import 'package:flutter/material.dart';
import 'package:redshift/assets/routes.dart';
import 'package:redshift/dependencies.dart';
import 'package:redshift/models/user.dart';
import 'package:redshift/pages/splashscreen.dart';
import 'package:kiwi/kiwi.dart' as kiwi;
import 'package:provider/provider.dart';
import 'package:redshift/uiwidgets/game_scaffold/game_scaffold.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  await initKiwi();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final User redshitUser = User(kiwi.Container().resolve<SharedPreferences>());

  @override
  Widget build(BuildContext context) {
    return Provider<User>.value(
      value: redshitUser,
      child: MaterialApp(
        title: 'Redshift',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.light,
          fontFamily: 'Quicksand',
        ),
        // initialRoute: '/',
        routes: {
          AppRoutes.ROOT: (context) => SplashScreen(),
          AppRoutes.GAME_HOME: (context) => GameScaffold(),
        },
      ),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);
//   final String title;
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Allui();
//   }
// }
