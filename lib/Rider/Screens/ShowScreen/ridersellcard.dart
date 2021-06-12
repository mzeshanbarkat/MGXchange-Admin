import 'package:flutter/material.dart';
import 'package:mgxchangeadmin/Admin/Screens/Utilis/sellcardlist.dart';
import 'package:mgxchangeadmin/Admin/Screens/Widget/sellcardwidget.dart';
import 'package:mgxchangeadmin/Rider/Screens/Widget/sellcardwidget.dart';

class RiderSellCard extends StatefulWidget {
  const RiderSellCard({Key key}) : super(key: key);

  @override
  _RiderSellCardState createState() => _RiderSellCardState();
}

class _RiderSellCardState extends State<RiderSellCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: SellCardList.list.length,
          itemBuilder: (BuildContext context, int index )
          => buildridersellcard(context,index)
      ),

    );
  }
}
