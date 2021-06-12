import 'package:flutter/material.dart';
import 'package:mgxchangeadmin/Data/Constant.dart';

class DetailsTextField extends StatelessWidget {
  final String hinttextt;

  const DetailsTextField({Key key, this.hinttextt}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      decoration: BoxDecoration(
        color: Color(0xffe2e9f2),
        borderRadius: BorderRadius.circular(5.0),
        border: Border.all(
          color: Color(0xffe2e9f2),
        ),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: hinttextt,
          border: OutlineInputBorder(
            borderSide: BorderSide(color: kPrimaryDark),
          ),

        ),
      ),
    );
  }
}
