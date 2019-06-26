// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:redshift/uiwidgets/nearbyCard.dart';
// import 'package:redshift/uiwidgets/categories.dart';
// import 'package:redshift/uiwidgets/searchbox.dart';
// import 'package:redshift/uiwidgets/locationdetailcard.dart';
// import 'package:redshift/uiwidgets/recommendedcard.dart';
// import 'package:redshift/uiwidgets/store_category.dart';

// class Allui extends StatefulWidget {
//   @override
//   _AlluiState createState() => _AlluiState();
// }

// class _AlluiState extends State<Allui> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       floatingActionButton: FloatingActionButton(
//         backgroundColor: Color(0xffe36b77),
//         onPressed: () {},
//         tooltip: 'Increment',
//         child: Icon(
//           FontAwesomeIcons.locationArrow,
//           color: Colors.white,
//           size: 20.0,
//         ),
//         elevation: 2.0,
//       ),
//       bottomNavigationBar: BottomAppBar(
//         shape: CircularNotchedRectangle(),
//         child: Padding(
//           padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 24.0),
//           child: Row(
//             mainAxisSize: MainAxisSize.max,
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: <Widget>[
//               Icon(
//                 FontAwesomeIcons.home,
//                 color: Color(0xffC3C7C6),
//               ),
//               Icon(
//                 FontAwesomeIcons.compass,
//                 color: Color(0xffC3C7C6),
//               ),
//               Icon(
//                 FontAwesomeIcons.store,
//                 color: Color(0xffC3C7C6),
//               ),
//               Icon(
//                 FontAwesomeIcons.user,
//                 color: Color(0xffC3C7C6),
//               ),
//             ],
//           ),
//         ),
//         color: Colors.white,
//       ),
//       body: SingleChildScrollView(
//         child: Container(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             mainAxisSize: MainAxisSize.max,
//             children: <Widget>[
//               Row(
//                 children: <Widget>[
//                   Padding(
//                     padding: EdgeInsets.all(12),
//                     child: Row(
//                       children: <Widget>[
//                         Column(
//                           mainAxisSize: MainAxisSize.max,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: <Widget>[
//                             SizedBox(height: 40),
//                             Text(
//                               'NEARBY',
//                               style: TextStyle(
//                                 fontSize: 12,
//                                 fontWeight: FontWeight.w900,
//                                 color: Color(0xff4A7079),
//                               ),
//                             ),
//                             SizedBox(height: 12),
//                             NearbyCard(),
//                             SizedBox(height: 20),
//                             Text(
//                               'SEARCH BOX',
//                               style: TextStyle(
//                                 fontSize: 12,
//                                 fontWeight: FontWeight.w900,
//                                 color: Color(0xff4A7079),
//                               ),
//                             ),
//                             SizedBox(height: 12),
//                             SearchBox(),
//                             SizedBox(height: 20),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//               Column(
//                 mainAxisSize: MainAxisSize.max,
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: <Widget>[
//                   Text(
//                     'BY CATEGORY',
//                     style: TextStyle(
//                       fontSize: 12,
//                       fontWeight: FontWeight.w900,
//                       color: Color(0xff4A7079),
//                     ),
//                   ),
//                   SizedBox(height: 15),
//                   Categories(),
//                   SizedBox(height: 30),
//                   LocationDetail(),
//                   SizedBox(height: 20),
//                   Recommended(),
//                   SizedBox(height: 20),
//                   SizedBox(height: 20),
//                   Container(
//                     child: Text(
//                       'STORE CATEGORIESdsa',
//                       style: TextStyle(
//                         fontSize: 12,
//                         fontFamily: 'Quicksand',
//                         fontWeight: FontWeight.w900,
//                         color: Color(0xff4A7079),
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 15),
//                   StoreCategories(),
//                   SizedBox(height: 40),
//                   Container(
//                     height: 60,
//                     width: MediaQuery.of(context).size.width * 1.0,
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.all(
//                         Radius.circular(0),
//                       ),
//                       boxShadow: <BoxShadow>[
//                         BoxShadow(
//                           color: Colors.grey,
//                           offset: Offset(0.0, 4.0),
//                           blurRadius: 10.0,
//                           spreadRadius: 0.0,
//                         ),
//                       ],
//                     ),
//                     child: Padding(
//                       padding: const EdgeInsets.all(20.0),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         mainAxisSize: MainAxisSize.max,
//                         children: <Widget>[
//                           Column(
//                             children: [
//                               Icon(
//                                 FontAwesomeIcons.home,
//                                 color: Color(0xffC3C7C6),
//                                 size: 20,
//                               ),
//                             ],
//                           ),
//                           Column(
//                             children: [
//                               Icon(
//                                 FontAwesomeIcons.compass,
//                                 color: Color(0xffC3C7C6),
//                                 size: 20,
//                               ),
//                             ],
//                           ),
//                           Column(
//                             children: [
//                               Icon(
//                                 FontAwesomeIcons.locationArrow,
//                                 color: Color(0xffE36B77),
//                                 size: 20,
//                               ),
//                             ],
//                           ),
//                           Column(
//                             children: [
//                               Icon(
//                                 FontAwesomeIcons.store,
//                                 color: Color(0xffC3C7C6),
//                                 size: 20,
//                               ),
//                             ],
//                           ),
//                           Column(
//                             children: [
//                               Icon(
//                                 FontAwesomeIcons.user,
//                                 color: Color(0xffC3C7C6),
//                                 size: 20,
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 50,
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
