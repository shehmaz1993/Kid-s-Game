import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:audioplayers/audio_cache.dart';
import 'starthomepage.dart';
import 'package:flutter/services.dart';
import 'package:flutterapp/Size.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final play = AudioCache();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays([]);

  }
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    // TODO: implement build
    return Scaffold(
      //appBar: AppBar(title: Text('Home')),
        body: Container(

            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage("assets/images/number_counting_bg.png"),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(children: <Widget>[
              Container(

               // margin: EdgeInsets.only(left:SizeConfig.blockSizeHorizontal*60.0),
                child: Row(
                  children: [

                       Container(

                            height:SizeConfig.blockSizeVertical* 16.0,
                             width:SizeConfig.blockSizeHorizontal*45.0,

                             margin: EdgeInsets.only(top:SizeConfig.blockSizeVertical*5.0, bottom: 6,left: SizeConfig.blockSizeHorizontal*30.0 ,),

                           child: Image.asset('assets/images/number_counting_title.png',),

                          ),


                      /*  SizedBox(

                          width: 50,

                        ),*/
                     Container(
                          margin: EdgeInsets.only(left:SizeConfig.blockSizeHorizontal*17.0,bottom: SizeConfig.blockSizeVertical*10.0),
                          height: SizeConfig.blockSizeVertical*10.0,

                          width: SizeConfig.blockSizeHorizontal*8.0,

                         //padding:EdgeInsets.only(bottom: 40) ,

                          child: MaterialButton(



                            child: Image.asset('assets/images/closebutton.png'),

                            onPressed: (){

                              Route route=MaterialPageRoute(builder: (context)=> StartHomePAge());

                              Navigator.push((context), route);

                            },

                          ),

                        ),


                      ],
                   ),

              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical*5.0,
              ),
               Container(
                  margin: EdgeInsets.only(left: SizeConfig.blockSizeHorizontal*18.0,top: SizeConfig.blockSizeVertical*5.0),
                  child: Row(children: <Widget>[
                    FlatButton(
                      //margin: EdgeInsets.fromLTRB(20, 0, 0, 30),
                      child: Image.asset('assets/images/number_1.png',
                          height: SizeConfig.blockSizeVertical*18.0, width:SizeConfig.blockSizeHorizontal*10.0),
                      onPressed: () {
                        play.play('one.mp3');

                      },
                    ),
                    //   SizedBox(height: 3, width: 3),
                    FlatButton(
                      //margin: EdgeInsets.fromLTRB(20, 0, 0, 30),
                      child: Image.asset('assets/images/number_2.png',
                          height: SizeConfig.blockSizeVertical*18.0, width:SizeConfig.blockSizeHorizontal*10.0),
                      onPressed: () {
                        play.play('two.mp3');
                      },
                    ),
                    //  SizedBox(height: 3, width: 3),
                    FlatButton(
                      child: Image.asset('assets/images/number_3.png',
                          height: SizeConfig.blockSizeVertical*18.0, width:SizeConfig.blockSizeHorizontal*10.0),
                      onPressed: () {
                        play.play('three.mp3');
                      },
                    ),
                    //  SizedBox(height:3, width: 3),
                    FlatButton(
                      child: Image.asset('assets/images/number_4.png',
                          height: SizeConfig.blockSizeVertical*18.0, width:SizeConfig.blockSizeHorizontal*10.0),
                      onPressed: () {
                        play.play('four.mp3');
                      },
                    ),
                    //  SizedBox(height:3, width:3),
                    FlatButton(
                      //margin: EdgeInsets.fromLTRB(20, 0, 0, 30),
                      child: Image.asset(
                        'assets/images/number_5.png',
                          height: SizeConfig.blockSizeVertical*18.0, width:SizeConfig.blockSizeHorizontal*10.0
                      ),
                      onPressed: (){
                        play.play('five.mp3');
                      },
                    ),
                  ])),

              SizedBox(height:SizeConfig.blockSizeVertical*4.0),
              Container(
                //margin: EdgeInsets.only(left: 150),
                margin: EdgeInsets.only(left: SizeConfig.blockSizeHorizontal*18.0,),
                child: Row(
                  children: <Widget>[

                    FlatButton(
                      //margin: EdgeInsets.fromLTRB(20, 0, 0, 30),
                      child: Image.asset('assets/images/number_6.png',
                          height: SizeConfig.blockSizeVertical*18.0, width:SizeConfig.blockSizeHorizontal*10.0),
                      onPressed: () {
                        play.play('six.mp3');
                      },
                    ),

                    //     SizedBox(height: 5, width:5),
                    FlatButton(
                      //margin: EdgeInsets.fromLTRB(20, 0, 0, 30),
                      child: Image.asset('assets/images/number_7.png',
                          height: SizeConfig.blockSizeVertical*18.0, width:SizeConfig.blockSizeHorizontal*10.0),
                      onPressed: () {
                        play.play('seven.mp3');
                      },
                    ),
                    //    SizedBox(height:5, width:5),
                    FlatButton(
                      //margin: EdgeInsets.fromLTRB(20, 0, 0, 30),
                      child: Image.asset('assets/images/number_8.png',
                          height: SizeConfig.blockSizeVertical*18.0, width:SizeConfig.blockSizeHorizontal*10.0),
                      onPressed: () {
                        play.play('eight.mp3');
                      },
                    ),
                    //     SizedBox(height:5, width:5),
                    FlatButton(
                      //margin: EdgeInsets.fromLTRB(20, 0, 0, 30),
                      child: Image.asset('assets/images/number_9.png',
                          height: SizeConfig.blockSizeVertical*18.0, width:SizeConfig.blockSizeHorizontal*10.0),
                      onPressed: () {
                        play.play('nine.mp3');
                      },
                    ),
                    //    SizedBox(height:5, width:5),
                    FlatButton(
                      //margin: EdgeInsets.fromLTRB(20, 0, 0, 30),
                      child: Image.asset('assets/images/number_10.png',
                          height: SizeConfig.blockSizeVertical*18.0, width:SizeConfig.blockSizeHorizontal*10.0),
                      onPressed: () {
                        play.play('ten.mp3');

                      },
                    ),
                  ],
                ),
              ),


              Container(
                height: SizeConfig.blockSizeVertical*20.0,
                width: SizeConfig.blockSizeHorizontal*90.0,
                margin: EdgeInsets.only(left: SizeConfig.blockSizeHorizontal*5.0,top:SizeConfig.blockSizeVertical*6.0),
                child: Image.asset(
                    'assets/images/number_counting_clickToPlay.png'),
              ),

            ])));
  }
}
