import 'package:flutter/material.dart';
import 'my_pic_view.dart';

main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String fileName = 'p1.jpg';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Column(
        children: <Widget>[
          MyPicView(
            picName: fileName,
          ),
          RaisedButton(
            onPressed: () {
              String tmpFileName = 'p1.jpg';
              if (fileName == 'p1.jpg') {
                tmpFileName = 'p2.jpg';
              }
              setState(() {
                fileName = tmpFileName;
              });
            },
            child: Text('切换图片'),
          )
        ],
      )),
    );
  }
}
