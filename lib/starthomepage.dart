import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/Size.dart';
import 'Homepage.dart';
import 'apple.dart';


class StartHomePAge extends StatefulWidget {
  @override
  _StartHomePAgeState createState() => _StartHomePAgeState();
}

class _StartHomePAgeState extends State<StartHomePAge> {



  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
           body: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/number_counting_bg.png"),
                  fit: BoxFit.fill
                )
              ),
              child:Center(
                child:Row(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height:SizeConfig.blockSizeVertical*30.0,
                      width:  SizeConfig.blockSizeHorizontal*30.0,
                      child: MaterialButton(
                        child: Image.asset("assets/images/count123.png",height: SizeConfig.blockSizeVertical*30.0,width: SizeConfig.blockSizeHorizontal*30.0,),

                        onPressed:() {
                          Route route =MaterialPageRoute(builder: (context)=>HomePage());
                          Navigator.push(context,route);
                        } ,
                      ),
                    ),
                  /*  SizedBox(
                      width: SizeConfig.blockSizeHorizontal*1.0,
                    ),*/
                   SizedBox(
                     width: SizeConfig.blockSizeHorizontal*30.0,
                     height: SizeConfig.blockSizeVertical*30.0,
                     child: MaterialButton(
                          child:Image.asset('assets/images/home_btn_2.png',
                          /*  height: SizeConfig.blockSizeVertical*30.0,width: SizeConfig.blockSizeHorizontal*30.0, */),

                        onPressed: (){
                          Route route =MaterialPageRoute(builder: (context)=>ApplePage());
                          Navigator.push(context,route);
                        },
                      ),
                   ),
                   /* SizedBox(
                      width: 40,
                    ),
                    FlatButton(
                      color: Colors.amber,
                      onPressed: (){},
                    )*/
                  ],
                ) ,
              ) ,
           ),
    );
  }
}
