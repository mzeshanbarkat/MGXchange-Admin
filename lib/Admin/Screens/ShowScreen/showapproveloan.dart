import 'package:flutter/material.dart';
import 'package:mgxchangeadmin/Admin/Screens/Utilis/approveloanlist.dart';
import 'package:mgxchangeadmin/Admin/Screens/Widget/approveloanwidget.dart';


class ShowApproveLoan extends StatefulWidget {
  const ShowApproveLoan({Key key}) : super(key: key);

  @override
  _ShowApproveLoanState createState() => _ShowApproveLoanState();
}

class _ShowApproveLoanState extends State<ShowApproveLoan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: ApproveLoanList.list.length,
          itemBuilder: (BuildContext context, int index )
          => buildapproveloancard(context,index)
      ),

    );
  }
}
