import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

import 'package:get/get.dart';
import 'package:mgxchangeadmin/Components/authbutton.dart';
import 'package:mgxchangeadmin/Components/textfieldd.dart';
import 'package:mgxchangeadmin/Data/Constant.dart';
import 'package:mgxchangeadmin/Rider/Screens/MainScreen/riderdashboard.dart';

class RiderLogin extends StatelessWidget {

  const RiderLogin({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ClipPath(
                    clipper: OvalBottomBorderClipper(),
                    child: Container(
                      height: 100,
                      color: kPrimarycolor,
                      child: Center(
                        child: Image(
                          image: AssetImage('assets/logo1.png'),
                          fit: BoxFit.contain,
                        ),
                      ),

                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Center(
                  child: Text('Rider Login',style: Textt2.textStyle(FontColor, 25),),
                ),
              ),
              SizedBox(height: 20.0,),
              Container(
                width: 330.0,
                height: 200.0,
                // color: Colors.brown,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextFieldd(hinttextt: 'mian@gmail.com',
                      obscre: false,
                    ),
                    TextFieldd(hinttextt: 'Enter your Password',
                      obscre: true,
                      iconn: Icon(Icons.remove_red_eye),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('Forgot Password?',style: Textt2.textStyle(FontColor, 15.0),),
                      ],
                    )

                  ],
                ),
              ),

              AuthButton(
                onchanged: (){
                  Get.to(RiderDashboard());
                },
                textt: 'LOGIN',
                textStyle: Textt1.textStyle(Colors.white, 18.0),
                colorr: kPrimaryDark,
              ),


            ],
          ),
        ),
      ),
    );
  }
}

