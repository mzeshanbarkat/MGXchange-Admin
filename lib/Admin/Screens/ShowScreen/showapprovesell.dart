import 'package:flutter/material.dart';
import 'package:mgxchangeadmin/Admin/Screens/Utilis/approveselllist.dart';
import 'package:mgxchangeadmin/Admin/Screens/Widget/approvesellwidget.dart';

class ShowApproveSell extends StatefulWidget {
  const ShowApproveSell({Key key}) : super(key: key);

  @override
  _ShowApproveSellState createState() => _ShowApproveSellState();
}

class _ShowApproveSellState extends State<ShowApproveSell> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: ApproveSellList.list.length,
          itemBuilder: (BuildContext context, int index )
          => buildapprovesellcard(context,index)
      ),

    );
  }
}
