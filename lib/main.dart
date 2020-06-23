import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      //appBar: AppBar(title: Text('Home')),
        body: Container(

             margin: EdgeInsets.only(top:5,bottom:10 ),
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage("Assets/images/number_counting_bg.png"),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(children: <Widget>[
              Container(
                height: 60,
                margin: EdgeInsets.only(top:30,bottom:30),
                child: Image.asset('Assets/images/number_counting_title.png'),
              ),

              Row(

                children: <Widget>[
                  Container(
                    height: 80,
                    width: 80,

                    margin: EdgeInsets.fromLTRB(90, 0, 0,30),
                    child: Image.asset('Assets/images/number_1.png'),
                  ),
                  Container(
                    height: 80,
                    width: 80,
                    margin: EdgeInsets.fromLTRB(20, 0, 0, 30),
                    child: Image.asset('Assets/images/number_2.png'),
                  ),
                  Container(
                    height: 80,
                    width: 80,
                    margin: EdgeInsets.fromLTRB(20, 0, 0, 30),
                    child: Image.asset('Assets/images/number_3.png'),
                  ),
                  Container(
                    height: 80,
                    width: 80,
                    margin: EdgeInsets.fromLTRB(20, 0, 0, 30),
                    child: Image.asset('Assets/images/number_4.png'),
                  ),
                  Container(
                    height: 80,
                    width: 80,
                    margin: EdgeInsets.fromLTRB(20, 0, 0, 30),
                    child: Image.asset('Assets/images/number_5.png'),
                  ),

                ],
              ),

              Row(
                children: <Widget>[
                  Container(
                    height: 80,
                    width: 80,
                    margin: EdgeInsets.only(left: 90.0),
                    child: Image.asset('Assets/images/number_6.png'),
                  ),
                  Container(
                    height: 80,
                    width: 80,
                    margin: EdgeInsets.only(left: 20.0),
                    child: Image.asset('Assets/images/number_7.png'),
                  ),
                  Container(
                    height: 80,
                    width: 80,
                    margin: EdgeInsets.only(left: 20.0),
                    child: Image.asset('Assets/images/number_8.png'),
                  ),
                  Container(
                    height: 80,
                    width: 80,
                    margin: EdgeInsets.only(left: 20.0),
                    child: Image.asset('Assets/images/number_9.png'),
                  ),
                  Container(
                    height: 80,
                    width: 80,
                    margin: EdgeInsets.only(left: 20.0),
                    child: Image.asset('Assets/images/number_10.png'),
                  ),


                ],
              ),

              Container(
                height: 50,
                margin:EdgeInsets.only(top:30.0) ,
                child: Image.asset(
                    'Assets/images/number_counting_clickToPlay.png'),
              ),


            ])));
  }
}

