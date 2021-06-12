import 'package:flutter/material.dart';
import 'package:mgxchangeadmin/Admin/Screens/Utilis/loancardlist.dart';
import 'package:mgxchangeadmin/Admin/Screens/Widget/loancardwidget.dart';
import 'package:mgxchangeadmin/Rider/Screens/Utilis/riderloancardlist.dart';
import 'package:mgxchangeadmin/Rider/Screens/Widget/loancardwidget.dart';

class RiderLoanCard extends StatefulWidget {
  const RiderLoanCard({Key key}) : super(key: key);

  @override
  _RiderLoanCardState createState() => _RiderLoanCardState();
}

class _RiderLoanCardState extends State<RiderLoanCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: RiderLoanCardList.list.length,
          itemBuilder: (BuildContext context, int index )
          => buildriderloancard(context,index)
      ),

    );
  }
}
