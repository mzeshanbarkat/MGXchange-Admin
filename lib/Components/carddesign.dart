import 'package:flutter/material.dart';
import 'package:mgxchangeadmin/Data/Constant.dart';


class CarddDesign extends StatelessWidget {
  final  icn;
  final icn2;
  final String textt;
  CarddDesign({Key key, this.icn, this.textt,this.icn2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0)),
      elevation: 4,
      color: Colors.white,
      child: Container(
        height: 400,
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 50,
                ),

                Stack(
                  children: [
                    Icon(icn,size: 30,color: kPrimarycolor,),
                    Icon(icn2,size: 35,color: kPrimarycolor,),
                  ],
                ),

                FittedBox(
                    child: Text(textt,style: Textt2.textStyle(FontColor, 15.0),),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
