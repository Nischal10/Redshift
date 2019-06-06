import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  Color get color => null;

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Column(
          children: [
            Icon(
              FontAwesomeIcons.pray,
              color: Color(0xff4a7079),
              size: 30,
            ),
            Container(
              margin: const EdgeInsets.only(top: 8),
              child: Text(
                'TEMPLES',
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xff4a7079),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
        Column(
          children: [
            Icon(
              FontAwesomeIcons.mountain,
              color: Color(0xff4a7079),
              size: 30,
            ),
            Container(
              margin: const EdgeInsets.only(top: 8),
              child: Text(
                'NATURE',
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xff4a7079),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
        Column(
          children: [
            Icon(
              FontAwesomeIcons.building,
              color: Color(0xff4a7079),
              size: 30,
            ),
            Container(
              margin: const EdgeInsets.only(top: 8),
              child: Text(
                'HOTELS',
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xff4a7079),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
        Column(
          children: [
            Icon(
              FontAwesomeIcons.utensils,
              color: Color(0xff4a7079),
              size: 30,
            ),
            Container(
              margin: const EdgeInsets.only(top: 8),
              child: Text(
                'EATERIES',
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xff4a7079),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
        Column(
          children: [
            Icon(
              FontAwesomeIcons.glassCheers,
              color: Color(0xff4a7079),
              size: 30,
            ),
            Container(
              margin: const EdgeInsets.only(top: 8),
              child: Text(
                'EVENTS',
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xff4a7079),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ],
    ));
  }
}
