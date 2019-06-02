import 'package:flutter/material.dart';
import 'package:redshift/uiElemenets/bottombar.dart';
import 'package:redshift/uiElemenets/nearbycard.dart';

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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _selectedIndex = 0;
static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
static const List<Widget> _widgetOptions = <Widget>[
  Text(
    'Index 0: Home',
    style: optionStyle,
  ),
  Text(
     'Index 1: Business',
     style: optionStyle,
  ),
  Text(
     'Index 2: School',
     style: optionStyle,
  ),
];

void _onItemTapped(int index) {
  setState(() {
    _selectedIndex = index;
  });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(12),
              child: Row(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 40),
                      Text(
                        'NEARBY',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(height: 12),
                      NearbyCard(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    bottomNavigationBar: BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.business),
          title: Text('Business'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.school),
          title: Text('School'),
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.amber[800],
      onTap: _onItemTapped,
    ),);
  }
}
