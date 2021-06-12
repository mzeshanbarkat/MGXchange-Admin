import 'package:flutter/material.dart';
import 'package:mgxchangeadmin/Screen/home.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration(seconds:3),(){
      print("After 3 seconds");

      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Home()));
    });

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage("assets/splash.jpg"),
              fit: BoxFit.fill,)
        ),

      ),
    );
  }
}