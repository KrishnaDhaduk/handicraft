import 'package:flutter/material.dart';

import 'avterGlow.dart';
import 'login.dart';

class design extends StatefulWidget {
  @override
  _designState createState() => _designState();
}

class _designState extends State<design> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(
        Duration(seconds: 6),
        () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => Login())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffE30031),
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              child: avterGlow1,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 155.0, top: 40.0),
              child: Text(
                "Durar HR",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 130.0, top: 5.0),
              child: Text(
                "The Complete HR Solution",
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xffF1F1F1),
                ),
              ),
            ),
          ],
        )));
  }
}
