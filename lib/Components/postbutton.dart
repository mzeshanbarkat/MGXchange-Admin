import 'package:flutter/material.dart';

class PostButton extends StatelessWidget {

  final colorr;
  final String textt;
  final onchanged;
  final textStyle ;

  PostButton({@required this.colorr,this.textt,this.onchanged,this.textStyle,});
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        focusElevation: 10,
        highlightElevation: 10,
        hoverElevation: 10,
        color: colorr,
        elevation: 4,
        child:SizedBox(
          width: 320,
          height: 50,
          child: Center(child: Text(textt,style: textStyle,textAlign: TextAlign.center,)),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        onPressed: onchanged

    );
  }
}
