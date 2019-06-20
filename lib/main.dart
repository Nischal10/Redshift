import 'package:flutter/material.dart';
import 'package:redshift/uiwidgets/game_scaffold/game_scaffold.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Redshift',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        fontFamily: 'Quicksand',
      ),
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => Allui(),
      //   '/splash': (context) => SplashScreen(),
      // },
      home: GameScaffold(
        child: Container(),
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
