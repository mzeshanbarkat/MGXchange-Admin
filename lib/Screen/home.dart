import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mgxchangeadmin/Admin/Screens/Auth/adminlogin.dart';
import 'package:mgxchangeadmin/Data/Constant.dart';
import 'package:mgxchangeadmin/Rider/Screens/Auth/riderlogin.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimarycolor,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 70),
                child: Center(
                  child: Container(
                    width: 250,
                    height: 80,
                    child: Image(image: AssetImage('assets/logo1.png'),fit: BoxFit.fill,),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 150.0),
                child: Column(

                  children: [
                    Container(
                      width: 150,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        border: Border.all(
                          color: Colors.white,
                            width: 5,

                        ),
                      ),
                      child: GestureDetector(
                          onTap: (){
                            Get.to(AdminLogin());
                          },
                          child: Center(child: Text('Admin',style: Textt2.textStyle(Colors.white, 20),),)),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      width: 150,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        border: Border.all(
                          color: Colors.white,
                          width: 5,
                        ),
                      ),
                      child: GestureDetector(
                          onTap: (){
                            Get.to(RiderLogin());
                          },
                          child: Center(child: Text('Rider',style: Textt2.textStyle(Colors.white, 20),),)),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
