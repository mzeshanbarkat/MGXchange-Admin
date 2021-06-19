import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:mgxchangeadmin/Admin/Screens/Utilis/approveloanlist.dart';
import 'package:mgxchangeadmin/Admin/Screens/Widget/approveloandetails.dart';
import 'package:mgxchangeadmin/Data/Constant.dart';
import 'package:get/get.dart';

Widget buildapproveloancard(BuildContext context, index){
  final data = ApproveLoanList.list[index];
  return SingleChildScrollView(
    child: Container(
      padding: EdgeInsets.all(15.0),
      width: 200,
      color: Color(0xffe2e9f2),
      child: Column(
        children: [

          InkWell(
            onTap: () {
              // oncardtap(context,index);
              Get.to(ApproveLoanDetails(img: data.img,
                txt1: data.text1,txt2: data.text2,
                txt3: data.text3,txt4: data.text4,

              ));
            },
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0)),
              child: Container(
                height: 100,
                child: Row(
                  children: [
                    Container(width: 15,
                      decoration: BoxDecoration(
                        color: kPrimarycolor,
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10.0),
                          topLeft: Radius.circular(10.0),
                        ),
                      ),
                    ),
                    SizedBox(width: 8,),
                    Container(
                      width: 80,
                      color: Colors.black,
                      child: Image(image: AssetImage(data.img),fit: BoxFit.cover,),
                    ),

                    SizedBox(width: 8,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data.text1,
                          style: Textt2.textStyle(FontColor, 18.0),
                        ),
                        Text(
                          data.text2,
                          style: Textt1.textStyle(FontColor, 14.0),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 70),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              RaisedButton(

                                  focusElevation: 10,
                                  highlightElevation: 10,
                                  hoverElevation: 10,
                                  color: Colors.red,
                                  elevation: 4,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  child:SizedBox(
                                    width: 40,
                                    height: 20,
                                    child: Center(
                                      child: Text('Delete',style: Textt2.textStyle(Colors.white, 10),),
                                    ),
                                  ),

                                  onPressed: (){}

                              ),
                              SizedBox(width: 8.0,),
                              RaisedButton(

                                  focusElevation: 10,
                                  highlightElevation: 10,
                                  hoverElevation: 10,
                                  color: Colors.green,
                                  elevation: 4,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  child:SizedBox(
                                    width: 40,
                                    height: 20,
                                    child: Center(
                                      child: Text('Approve',style: Textt2.textStyle(Colors.white, 10),),
                                    ),
                                  ),

                                  onPressed: (){}

                              ),

                            ],
                          ),
                        ),

                      ],

                    ),

                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}