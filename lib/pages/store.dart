import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:redshift/uiwidgets/searchbox.dart';
import 'package:redshift/assets/assets.dart';
import 'package:redshift/uiwidgets/store_category.dart';

class StorePage extends StatefulWidget {
  @override
  _StorePageState createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: ScreenUtil.instance.setHeight(100),
              ),
              SearchBox(),
              SizedBox(height: 40.0),
              Text(
                'SALE',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Quicksand',
                  color: Color(0xff4A7079),
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                height: 160.0,
                width: MediaQuery.of(context).size.width * 0.80,
                decoration: BoxDecoration(
                  color: Color(0xffFA9384),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Color(0xfffa9384),
                      offset: Offset(0.0, 3.0),
                      blurRadius: 1.0,
                      spreadRadius: 0.0,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40.0),
              StoreCategories(),
              SizedBox(height: 40.0),
              Column(
                children: <Widget>[
                  Container(
                    height: 120.0,
                    width: MediaQuery.of(context).size.width * 0.80,
                    decoration: BoxDecoration(
                      color: Color(0xff5873DE),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 120.0,
                        width: MediaQuery.of(context).size.width * 0.39,
                        decoration: BoxDecoration(
                          color: Color(0xffE36B77),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                      SizedBox(width: 10.0),
                      Container(
                        height: 120.0,
                        width: MediaQuery.of(context).size.width * 0.39,
                        decoration: BoxDecoration(
                          color: Color(0xff6CAC9C),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Container(
                    height: 120.0,
                    width: MediaQuery.of(context).size.width * 0.80,
                    decoration: BoxDecoration(
                      color: Color(0xff5873DE),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 120.0,
                        width: MediaQuery.of(context).size.width * 0.39,
                        decoration: BoxDecoration(
                          color: Color(0xffE36B77),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                      SizedBox(width: 10.0),
                      Container(
                        height: 120.0,
                        width: MediaQuery.of(context).size.width * 0.39,
                        decoration: BoxDecoration(
                          color: Color(0xff6CAC9C),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 40.0),
            ],
          ),
        ),
      ),
    );
  }
}
