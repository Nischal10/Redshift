import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:redshift/assets/assets.dart';

class SearchBox extends StatefulWidget {
  @override
  _SearchBoxState createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: MediaQuery.of(context).size.width * 0.90,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: new BorderRadius.circular(100.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, 3),
            blurRadius: 5,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 20),
        child: Row(
          children: <Widget>[
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  icon: Icon(FontAwesomeIcons.search,color: Colors.black87,size: FontSize.fontSize14,),
                  border: InputBorder.none,
                  hintText: "Search for places",
                ),
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w500,
                    fontSize: FontSize.fontSize14),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
