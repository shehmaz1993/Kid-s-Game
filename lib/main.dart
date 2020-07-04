import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:audioplayers/audio_cache.dart';

import  'package:flutterapp/splashScreen.dart';
import  'Package:flutterapp/Homepage.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
          [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight])
      .then((_) {
    runApp(MaterialApp(
      //title: 'My App',
      home: SplashScreen(),
      routes: <String,WidgetBuilder>{
        'HomePage':(BuildContext context) => new HomePage()
      },

    ));
  });
}


