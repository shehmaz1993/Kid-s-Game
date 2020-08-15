
import 'package:flutter/cupertino.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var _duration = new Duration(seconds: 5);
    return new Timer(_duration, navigationPage);
  }
  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('StartHomePAge');
  }
  @override
  void initState() {
    super.initState();
    startTime();
    SystemChrome.setEnabledSystemUIOverlays([]);
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Image.asset('assets/images/falogo.png'),
      ),
    );
  }
}