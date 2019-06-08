import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LOverview extends StatefulWidget {
  @override
  _LOverviewState createState() => _LOverviewState();
}

class _LOverviewState extends State<LOverview> {
  Color get color => null;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: 365,
        width: MediaQuery.of(context).size.width * 1.0,
        child: Image.asset(
          'assets/images/ktm.jpeg',
        ),
      ),
    );
  }
}
