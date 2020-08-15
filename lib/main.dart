
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterapp/splashScreen.dart';
import 'package:flutterapp/starthomepage.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft])
      .then((_) {
    runApp(new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new SplashScreen(),
      routes: <String, WidgetBuilder>{
        'StartHomePAge': (BuildContext context) => new StartHomePAge(),
      },
    ));
  });

}