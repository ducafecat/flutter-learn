import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Row 行组件
    Widget _buildRow() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        verticalDirection: VerticalDirection.up,
        textBaseline: TextBaseline.ideographic,
        children: <Widget>[
          RaisedButton(
            color: Colors.blue,
            child: Text('按钮1'),
            onPressed: () {},
          ),
          RaisedButton(
            color: Colors.grey,
            child: Text('按钮2'),
            onPressed: () {},
          ),
          RaisedButton(
            color: Colors.orange,
            child: Text('按钮3'),
            onPressed: () {},
          ),
        ],
      );
    }

    // Column 列组件
    Widget _buildColumn() {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            color: Colors.blue,
            child: Text('按钮1'),
            onPressed: () {},
          ),
          RaisedButton(
            color: Colors.grey,
            child: Text('按钮2'),
            onPressed: () {},
          ),
          RaisedButton(
            color: Colors.orange,
            child: Text('按钮3'),
            onPressed: () {},
          ),
        ],
      );
    }

    // Row Column 组件嵌套
    Widget _buildRowColumn() {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            // 元素排列顺序
            textDirection: TextDirection.rtl,
            // 主轴方向
            mainAxisAlignment: MainAxisAlignment.center,
            // 交叉轴的起始位置
            verticalDirection: VerticalDirection.up,
            // 交叉轴对齐方式
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              RaisedButton(
                color: Colors.blue,
                child: Text('按钮1'),
                onPressed: () {},
              ),
              RaisedButton(
                color: Colors.blue,
                child: Text('按钮2222222'),
                onPressed: () {},
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.yellow,
              )
            ],
          )
        ],
      );
    }

    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: _buildRow(),
        // _buildColumn(),
        // _buildRowColumn(),
      ),
    );
  }
}
