import 'dart:async';
import 'dart:ui';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'starthomepage.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutterapp/Size.dart';




class ApplePage extends StatefulWidget {


  @override
  _ApplePageState createState() => _ApplePageState();
}

class _ApplePageState extends State<ApplePage> {
    final play=AudioCache();
    final assetsAudioPlayer = AssetsAudioPlayer();

   // ignore: non_constant_identifier_names
   List picture=[
     'assets/images/object_1.png',
     'assets/images/object_2.png',
     'assets/images/object_3.png',
     'assets/images/object_4.png',
     'assets/images/object_5.png',
     'assets/images/object_6.png',
     'assets/images/object_7.png',
     'assets/images/object_8.png',
     'assets/images/object_9.png',
     'assets/images/object_10.png',
     'assets/images/btn_mute.png',
     'assets/images/btn_unmute.png',

   ];



   var pic = 'assets/images/object_10.png';
   var audio1='unmute';
   var v='assets/images/btn_unmute.png';
  String k;

  Timer timer;
  int counter=0;
  var control='yes';

    void starttimer(){

      timer=Timer.periodic(Duration(milliseconds: 1500), (timer) {
        setState(() {
          control='no';
         if(audio1=='unmute') {
           if (counter < 10) {
             if (counter == 0) {
               pic = picture[0];
               assetsAudioPlayer.open(Audio('assets/one.mp3'));
             }
             else if (counter == 1) {
               pic = picture[1];
               assetsAudioPlayer.open(Audio('assets/two.mp3'));
             }
             else if (counter == 2) {
               pic = picture[2];
               assetsAudioPlayer.open(Audio('assets/three.mp3'));
             }
             else if (counter == 3) {
               pic = picture[3];
               assetsAudioPlayer.open(Audio('assets/four.mp3'));
             }
             else if (counter == 4) {
               pic = picture[4];
               assetsAudioPlayer.open(Audio('assets/five.mp3'));
             }

             else if (counter == 5) {
               pic = picture[5];
               assetsAudioPlayer.open(Audio('assets/six.mp3'));
             }
             else if (counter == 6) {
               pic = picture[6];
               assetsAudioPlayer.open(Audio('assets/seven.mp3'));
             }
             else if (counter == 7) {
               pic = picture[7];
               assetsAudioPlayer.open(Audio('assets/eight.mp3'));
             }
             else if (counter == 8) {
               pic = picture[8];
               assetsAudioPlayer.open(Audio('assets/nine.mp3'));
             }
             else {
               pic = picture[9];
               assetsAudioPlayer.open(Audio('assets/ten.mp3'));
             }

             counter++;
           }
         }
         if(audio1=='mute') {
            if (counter < 10) {
              if (counter == 0) {
                pic = picture[0];

              }
              else if (counter == 1) {
                pic = picture[1];

              }
              else if (counter == 2) {
                pic = picture[2];

              }
              else if (counter == 3) {
                pic = picture[3];

              }
              else if (counter == 4) {
                pic = picture[4];

              }

              else if (counter == 5) {
                pic = picture[5];

              }
              else if (counter == 6) {
                pic = picture[6];

              }
              else if (counter == 7) {
                pic = picture[7];

              }
              else if (counter == 8) {
                pic = picture[8];

              }
              else {
                pic = picture[9];

              }

              counter++;
            }
          }
           if(counter==10)
          {  timer.cancel();
          counter=0;
          control='yes';
          }
        });
      });

    }







  @override
  Widget build(BuildContext context) {
      SizeConfig().init(context);
    return Scaffold(
        body: Row(
          children: [
          Expanded(
          child:Container(
            height:SizeConfig.blockSizeHorizontal*30.0,//300,
          width:SizeConfig.blockSizeVertical*30.0,//300,
          margin: EdgeInsets.fromLTRB(80.0, 40.0, 0.0, 20.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(pic),
              
              fit: BoxFit.fill,
            ),

          ),
          ),
          ),
           // SizedBox(width: 150,),
           Expanded(
            child:Container(
               margin: EdgeInsets.only(left: 20.0),
              child: Column(

                children: [
                  Container(

                    height:SizeConfig.blockSizeVertical*10.0, //80,

                    width:SizeConfig.blockSizeHorizontal* 10.0,

                   margin: EdgeInsets.only(left:SizeConfig.blockSizeHorizontal*40.0,bottom:SizeConfig.blockSizeHorizontal* 1.5),

                    child: MaterialButton(

                      child: Image.asset('assets/images/closebutton.png'),

                      onPressed: (){

                        Route route=MaterialPageRoute(builder: (context)=> StartHomePAge());

                        Navigator.push((context), route);

                      },

                    ),

                  ),

                  Container(
                    child: Row(
                      children: [


                           MaterialButton(

                            child:Image.asset('assets/images/number_1.png',
                                height: SizeConfig.blockSizeVertical*20.0, width: SizeConfig.blockSizeHorizontal*10.0),
                            onPressed: (){
                            //  play.play('one.mp3');
                              setState(() {
                                if(control=='yes') {
                                  if (audio1 == 'unmute') {
                                    pic = picture[0];
                                    play.play('one.mp3');
                                  }
                                  else {
                                    pic = picture[0];
                                  }
                                }
                              });

                            },
                          ),

                        MaterialButton(
                          child:Image.asset('assets/images/number_2.png',
                              height: SizeConfig.blockSizeVertical*20.0, width:SizeConfig.blockSizeHorizontal*10.0 ),
                          onPressed: (){

                           // play.play('two.mp3');
                            setState(() {
                           if(control=='yes') {
                             if (audio1 == 'unmute') {
                               pic = picture[1];
                               play.play('two.mp3');
                             }
                             else {
                               pic = picture[1];
                             }
                           }
                           });

                          // changingstate(picture[1]);
                          },
                        ),
                        MaterialButton(
                          child:Image.asset('assets/images/number_3.png',
                              height:  SizeConfig.blockSizeVertical*20.0, width:SizeConfig.blockSizeHorizontal*10.0  ),

                        onPressed: (){
                        //  play.play('three.mp3');
                         //changingstate(picture[2]);
                          setState(() {
                          if(control=='yes') {
                            if (audio1 == 'unmute') {
                              pic = picture[2];
                              play.play('three.mp3');
                            }
                            else {
                              pic = picture[2];
                            }
                          }
                          });

                        },
                        )
                      ],
                    ),
                  ),
                  SizedBox(height:3),
                  Row(
                    children: [
                      MaterialButton(
                        child:Image.asset('assets/images/number_4.png',
                            height: SizeConfig.blockSizeVertical*20.0, width: SizeConfig.blockSizeHorizontal*10.0 ),
                        onPressed: (){
                         // play.play('four.mp3');
                         //changingstate(picture[3]);
                          setState(() {
                         if(control=='yes') {
                            if(audio1=='unmute')
                            {
                              pic=picture[3];
                              play.play('four.mp3');
                            }
                            else{
                              pic=picture[3];
                            }
                         }
                          });
                        },
                      ),
                      MaterialButton(
                        child:Image.asset('assets/images/number_5.png',
                            height:  SizeConfig.blockSizeVertical*20.0, width: SizeConfig.blockSizeHorizontal*10.0),
                        onPressed: (){
                         // play.play('five.mp3');
                         // changingstate(picture[4]);
                          setState(() {
                       if(control=='yes') {
                         if (audio1 == 'unmute') {
                           pic = picture[4];
                           play.play('five.mp3');
                         }
                         else {
                           pic = picture[4];
                         }
                       }   });
                        },
                      ),
                      MaterialButton(
                        child:Image.asset('assets/images/number_6.png',
                            height: SizeConfig.blockSizeVertical*20.0, width: SizeConfig.blockSizeHorizontal*10.0),
                        onPressed: (){
                         // play.play('six.mp3');
                        // changingstate(picture[5]);
                          setState(() {
                         if(control=='yes') {
                           if (audio1 == 'unmute') {
                             pic = picture[5];
                             play.play('six.mp3');
                           }
                           else {
                             pic = picture[5];
                           }
                         }
                          });
                        },
                      )
                    ],

                  ),
                    SizedBox(height: 3,),
                     Row(
                      children: [
                        MaterialButton(
                          child:Image.asset('assets/images/number_7.png',
                              height:SizeConfig.blockSizeVertical*20.0, width:SizeConfig.blockSizeHorizontal*10.0),
                          onPressed: (){
                          //  play.play('seven.mp3');
                          //  changingstate(picture[6]);
                            setState(() {
                          if(control=='yes') {
                            if (audio1 == 'unmute') {
                              pic = picture[6];
                              play.play('seven.mp3');
                            }
                            else {
                              pic = picture[6];
                            }
                          }
                            });
                          },
                        ),
                        MaterialButton(
                          child:Image.asset('assets/images/number_8.png',
                              height: SizeConfig.blockSizeVertical*20.0, width:SizeConfig.blockSizeHorizontal*10.0 ),
                          onPressed: (){
                          //  play.play('eight.mp3');
                           // changingstate(picture[7]);
                            setState(() {
                         if(control=='yes') {
                           if (audio1 == 'unmute') {
                             pic = picture[7];
                             play.play('eight.mp3');
                           }
                           else {
                             pic = picture[7];
                           }
                         }
                            });
                          },
                        ),
                        MaterialButton(
                          child:Image.asset('assets/images/number_9.png',
                              height:SizeConfig.blockSizeVertical*20.0 , width: SizeConfig.blockSizeHorizontal*10.0),
                          onPressed: (){
                          //  play.play('nine.mp3');
                           // changingstate(picture[8]);
                            setState(() {
                          if(control=='yes') {
                            if (audio1 == 'unmute') {
                              pic = picture[8];
                              play.play('nine.mp3');
                            }
                            else {
                              pic = picture[8];
                            }
                          }  });
                          },
                        )
                      ],
                    ),
                     SizedBox(height: 3,),
                  Row(
                    children: [
                      MaterialButton(
                        child:Image.asset('assets/images/number_10.png',
                            height:SizeConfig.blockSizeVertical*20.0  , width: SizeConfig.blockSizeHorizontal*10.0 ),
                        onPressed: (){
                        //  play.play('ten.mp3');
                         // changingstate(picture[9]);
                          setState(() {
                       if(control=='yes') {
                         if (audio1 == 'unmute') {
                           pic = picture[9];
                           play.play('ten.mp3');
                         }
                         else {
                           pic = picture[9];
                         }
                       }   });
                        },
                      ),
                      MaterialButton(
                        child:Image.asset(v,
                            height:SizeConfig.blockSizeVertical*20.0 , width:  SizeConfig.blockSizeHorizontal*10.0),
                        onPressed: (){
                           setState(() {
                             if(audio1=='unmute')
                             {
                               audio1='mute';
                               v= picture[10];
                             }
                             else
                               {
                                 audio1='unmute';
                                 v=picture[11];
                               }

                           });
                        },
                      ),
                      MaterialButton(
                        child:Image.asset('assets/images/btn_repeat.png',
                            height: SizeConfig.blockSizeVertical*20.0, width: SizeConfig.blockSizeHorizontal*10.0),
                        onPressed:(){
                             //shownumber();
                            //SharedLists();
                          starttimer();

                        }



                      ),
                    ],
                  )
                ],
              ),
            ),
           ),

          ],
        )

    );

  }
}

