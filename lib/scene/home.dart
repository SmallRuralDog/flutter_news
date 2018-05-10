import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class home extends StatefulWidget {
  @override
  State createState() => homeSate();
}

class homeSate extends State<home> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: new CupertinoNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        middle: new Row(
          children: <Widget>[new Text("home")],
        ),
      ),
      child: new Container(
        child: new Column(
          children: <Widget>[new Text("Home")],
        ),
      ),
    );
  }
}
