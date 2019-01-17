import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:async';

class MainView extends StatefulWidget {
  MainView({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  Future<String> getJson() async {
    var data =
        await DefaultAssetBundle.of(context).loadString("assets/menus.json");
    return data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: new FutureBuilder(
            future: getJson(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              switch (snapshot.connectionState) {
                case ConnectionState.none: //get未执行时
                case ConnectionState.waiting: //get正在执行时
                  return new Center(
                    child: new Card(
                      child: new Text('loading...'), //在页面中央显示正在加载
                    ),
                  );
                default:
                  if (snapshot.hasError) //get执行完成但出现异常
                    return new Text('Error: ${snapshot.error}');
                  else
                    return createListView(context, snapshot);
              }
            }));
  }

  Widget createListView(BuildContext context, AsyncSnapshot snapshot) {
    List dataList =
        jsonDecode(snapshot.data) != null ? jsonDecode(snapshot.data) : [];
    return new ListView.builder(
        physics: const AlwaysScrollableScrollPhysics(),
        padding: const EdgeInsets.all(16.0),
        itemCount: dataList.length,
        itemBuilder: (context, i) {
          return itemRow(context, dataList[i]);
        });
  }

  Widget itemRow(context, item) {
    return new FlatButton(
        child: Text(item["title"]),
        onPressed: () {
          Navigator.pushNamed(context, item["code"]);
        },
      );
  }
}
