import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
      padding: EdgeInsets.all(12),
      child: Column(
        children: <Widget>[
          Icon(
            FontAwesomeIcons.pray,
            color: Color(0xff4A7079),
            size: 30,
          ),
          Text(
            'Temples',
            style: TextStyle(
              color: Color(0xff4a7079),
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    ));
  }
}
