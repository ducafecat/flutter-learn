import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // expanded
  Widget _buildExpandedRow() {
    return Row(
      children: <Widget>[
        Container(
          width: 50,
          color: Colors.cyan,
        ),
        Expanded(
          child: Container(
            color: Colors.brown,
          ),
        ),
      ],
    );
  }

  // flex
  Widget _buildFlex() {
    return Column(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.cyan,
          ),
        ),
        Expanded(
          flex: 4,
          child: Container(
            color: Colors.brown,
          ),
        )
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
        body: _buildExpandedRow(),
        // _buildFlex(),
      ),
    );
  }
}
