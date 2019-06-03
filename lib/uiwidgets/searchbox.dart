import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchBox extends StatefulWidget {
  @override
  _SearchBoxState createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
          height: 40,
          width: MediaQuery.of(context).size.width * 0.80,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: new BorderRadius.circular(100.0),
            boxShadow: [BoxShadow(
              color: Colors.black12,
              offset: Offset(0,2),
              blurRadius: 6,
              spreadRadius: 1,
            ),],
          ),
          child: Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              children: <Widget>[
                Icon(
                  FontAwesomeIcons.search,
                  color: Colors.black54,
                  size: 14,
                ),
                SizedBox(width: 12,),
                Text(
                  'Search',
                  style: TextStyle(fontSize: 14,color: Colors.black54, fontWeight: FontWeight.w500,),
                )
              ],
            ),
          ),
    );
  }
}
