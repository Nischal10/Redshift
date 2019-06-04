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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Icon(
            FontAwesomeIcons.pray,
            color: Color(0xff4A7079),
            size: 30,
          ),
          Icon(
            FontAwesomeIcons.mountain,
            color: Color(0xff4A7079),
            size: 30,
          ),
          Icon(
            FontAwesomeIcons.building,
            color: Color(0xff4A7079),
            size: 30,
          ),
          Icon(
            FontAwesomeIcons.utensils,
            color: Color(0xff4A7079),
            size: 30,
          ),
          Icon(
            FontAwesomeIcons.glassCheers,
            color: Color(0xff4A7079),
            size: 30,
          ),
        ],
      ),
    ));
  }
}
