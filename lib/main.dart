import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
          [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight])
      .then((_) {
    runApp(MaterialApp(
      title: 'My App',
      home: HomePage(),
    ));
  });
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final play = AudioCache();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        //appBar: AppBar(title: Text('Home')),
        body: Container(
            margin: EdgeInsets.only(top: 5, bottom: 10),
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage("assets/images/number_counting_bg.png"),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(children: <Widget>[
              Container(
                height: 60,
                margin: EdgeInsets.only(top: 30, bottom: 30),
                child: Image.asset('assets/images/number_counting_title.png'),
              ),
              Container(
                  margin: EdgeInsets.only(left: 50),
                  child: Row(children: <Widget>[
                    FlatButton(
                      //margin: EdgeInsets.fromLTRB(20, 0, 0, 30),
                      child: Image.asset('assets/images/number_1.png',
                          height: 80, width: 80),
                      onPressed: () {
                        play.play('one.mp3');

                      },
                    ),
                 //   SizedBox(height: 3, width: 3),
                    FlatButton(
                      //margin: EdgeInsets.fromLTRB(20, 0, 0, 30),
                      child: Image.asset('assets/images/number_2.png',
                          height: 80, width: 80),
                      onPressed: () {
                        play.play('two.mp3');
                      },
                    ),
                  //  SizedBox(height: 3, width: 3),
                    FlatButton(
                      child: Image.asset('assets/images/number_3.png',
                          height: 80, width: 80),
                      onPressed: () {
                        play.play('three.mp3');
                      },
                    ),
                  //  SizedBox(height:3, width: 3),
                    FlatButton(
                      child: Image.asset('assets/images/number_4.png',
                          height: 80, width: 80),
                      onPressed: () {
                        play.play('four.mp3');
                      },
                    ),
                  //  SizedBox(height:3, width:3),
                    FlatButton(
                      //margin: EdgeInsets.fromLTRB(20, 0, 0, 30),
                      child: Image.asset(
                        'assets/images/number_5.png',
                        height: 80,
                        width: 80,
                      ),
                      onPressed: (){
                        play.play('five.mp3');
                      },
                    ),
                  ])),
              SizedBox(height: 10, width: 10),
              Container(
                margin: EdgeInsets.only(left: 50),
                child: Row(
                  children: <Widget>[

                      FlatButton(
                        //margin: EdgeInsets.fromLTRB(20, 0, 0, 30),
                        child: Image.asset('assets/images/number_6.png',
                            height: 80, width: 80),
                        onPressed: () {
                          play.play('six.mp3');
                        },
                      ),

               //     SizedBox(height: 5, width:5),
                    FlatButton(
                      //margin: EdgeInsets.fromLTRB(20, 0, 0, 30),
                      child: Image.asset('assets/images/number_7.png',
                          height: 80, width: 80),
                      onPressed: () {
                        play.play('seven.mp3');
                      },
                    ),
                //    SizedBox(height:5, width:5),
                    FlatButton(
                      //margin: EdgeInsets.fromLTRB(20, 0, 0, 30),
                      child: Image.asset('assets/images/number_8.png',
                          height: 80, width: 80),
                      onPressed: () {
                        play.play('eight.mp3');
                      },
                    ),
               //     SizedBox(height:5, width:5),
                    FlatButton(
                      //margin: EdgeInsets.fromLTRB(20, 0, 0, 30),
                      child: Image.asset('assets/images/number_9.png',
                          height: 80, width: 80),
                      onPressed: () {
                        play.play('nine.mp3');
                      },
                    ),
                //    SizedBox(height:5, width:5),
                    FlatButton(
                      //margin: EdgeInsets.fromLTRB(20, 0, 0, 30),
                      child: Image.asset('assets/images/number_10.png',
                          height: 80, width: 80),
                      onPressed: () {
                        play.play('ten.mp3');

                      },
                    ),
                  ],
                ),
              ),
              Container(
                height: 50,
                margin: EdgeInsets.only(top: 30.0),
                child: Image.asset(
                    'assets/images/number_counting_clickToPlay.png'),
              ),
            ])));
  }
}
