import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class video extends StatefulWidget {
  @override
  State createState() => videoSate();
}

class videoSate extends State<video> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: new CupertinoNavigationBar(
        backgroundColor: Colors.white,
        middle: new Row(
          children: <Widget>[new Text("video")],
        ),
      ),
      child: new Container(
        child: new Column(
          children: <Widget>[new Text("video")],
        ),
      ),
    );
  }
}
