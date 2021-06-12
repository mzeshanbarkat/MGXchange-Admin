import 'package:flutter/material.dart';
import 'package:mgxchangeadmin/Admin/Screens/Utilis/sellcardlist.dart';
import 'package:mgxchangeadmin/Admin/Screens/Widget/sellcardwidget.dart';


class ShowSellCard extends StatefulWidget {
  const ShowSellCard({Key key}) : super(key: key);

  @override
  _ShowSellCardState createState() => _ShowSellCardState();
}

class _ShowSellCardState extends State<ShowSellCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: SellCardList.list.length,
          itemBuilder: (BuildContext context, int index )
          => buildsellcard(context,index)
      ),

    );
  }
}
