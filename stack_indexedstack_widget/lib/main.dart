import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // stack
  Widget _buildStack() {
    return Stack(
      alignment: AlignmentDirectional.topEnd,
      children: <Widget>[
        Container(
          width: 300,
          height: 300,
          color: Colors.cyan,
        ),
        Container(
          width: 200,
          height: 200,
          color: Colors.amber,
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.blue,
        ),
      ],
    );
  }

  // IndexedStack
  Widget _buildIndexedStack() {
    return IndexedStack(
      index: 1,
      children: <Widget>[
        Container(
          width: 300,
          height: 300,
          color: Colors.cyan,
        ),
        Container(
          width: 200,
          height: 200,
          color: Colors.amber,
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.blue,
        ),
      ],
    );
  }

  // Positioned
  Widget _buildPosition() {
    return Stack(
      alignment: AlignmentDirectional.topCenter,
      children: <Widget>[
        Container(
          // width: 300,
          // height: 300,
          color: Colors.cyan,
        ),
        Container(
          width: 200,
          height: 200,
          color: Colors.amber,
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.blue,
        ),
        Positioned(
          left: 50,
          bottom: 50,
          child: Container(
            width: 100,
            height: 100,
            color: Colors.green,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body:
            //
            // _buildStack(),
            // _buildIndexedStack(),
            _buildPosition(),
      ),
    );
  }
}
