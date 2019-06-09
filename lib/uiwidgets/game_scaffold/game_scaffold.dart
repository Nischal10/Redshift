import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GameScaffold extends StatefulWidget {
  final Widget child;
  const GameScaffold({Key key, @required this.child}) : super(key: key);
  @override
  _GameScaffoldState createState() => _GameScaffoldState();
}

class _GameScaffoldState extends State<GameScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 255, 255,0),
        elevation: 0,
        leading: Container(
          child: Row(
            children: <Widget>[
              Stack(children: <Widget>[
                Icon(FontAwesomeIcons.home, color: Colors.red,),
              ],)
            ],
          ),
        ),
        actions: <Widget>[
          Icon(FontAwesomeIcons.idBadge,color: Colors.red),
          Text('12'),
          SizedBox(width: 20,),
          Icon(FontAwesomeIcons.coins,color: Colors.red),
        ],
      ),
      key: widget.key,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xffe36b77),
        onPressed: () {},
        tooltip: 'Go to Map',
        child: Icon(
          FontAwesomeIcons.locationArrow,
          color: Colors.white,
          size: 20.0,
        ),
        elevation: 2.0,
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 24.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Icon(
                FontAwesomeIcons.home,
                color: Color(0xffC3C7C6),
              ),
              Icon(
                FontAwesomeIcons.compass,
                color: Color(0xffC3C7C6),
              ),
              Icon(
                FontAwesomeIcons.store,
                color: Color(0xffC3C7C6),
              ),
              Icon(
                FontAwesomeIcons.user,
                color: Color(0xffC3C7C6),
              ),
            ],
          ),
        ),
        color: Colors.white,
      ),
      body: widget.child,
    );
  }
}
