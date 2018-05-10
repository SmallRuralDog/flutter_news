import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'scene/home.dart';
import 'scene/video.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<BottomNavigationBarItem> _items;

  void _initBarItem() {
    _items = <BottomNavigationBarItem>[
      new BottomNavigationBarItem(
          icon: new Icon(Icons.home), title: new Text("首页")),
      new BottomNavigationBarItem(
          icon: new Icon(Icons.videocam), title: new Text("视频")),
      new BottomNavigationBarItem(
          icon: new Icon(Icons.fiber_smart_record), title: new Text("发现")),
      new BottomNavigationBarItem(
          icon: new Icon(Icons.perm_identity), title: new Text("我的"))
    ];
  }

  @override
  void initState() {
    super.initState();
    _initBarItem();
  }

  @override
  Widget build(BuildContext context) {
    return new CupertinoTabScaffold(
        tabBar: _tabBar(),
        tabBuilder: (context, index) {
          switch (index) {
            case 0:
              return new home();
            case 1:
              return new video();
          }
        });
  }

  Widget _tabBar() {
    return new CupertinoTabBar(
      items: _items,
    );
  }
}
