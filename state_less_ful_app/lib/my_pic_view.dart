import 'package:flutter/material.dart';

class MyPicView extends StatefulWidget {
  final String picName;
  MyPicView({Key key, this.picName}) : super(key: key);

  _MyPicViewState createState() => _MyPicViewState();
}

class _MyPicViewState extends State<MyPicView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset('assets/${widget.picName}'),
    );
  }
}
