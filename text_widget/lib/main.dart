import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Text App Bar'),
        ),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('字体24下划线',
                  style: TextStyle(
                    color: Colors.blue, // 蓝色
                    fontSize: 24, // 24 号字体
                    decoration: TextDecoration.underline, // 下划线
                  )),
              Text('放大加粗',
                  textScaleFactor: 1.2, // 放大 1.2
                  style: TextStyle(
                    fontWeight: FontWeight.bold, // 加粗 bold
                    fontSize: 24, // 24 号字体
                    color: Colors.green, // 绿色
                    decoration: TextDecoration.none, // 不要下滑线
                  )),
              Text(
                  '缩放，Each line here is progressively more opaque. The base color is material.Colors.black, and Color.withOpacity is used to create a derivative color with the desired opacity. The root TextSpan for this RichText widget is explicitly given the ambient DefaultTextStyle, since RichText does not do that automatically. The inner TextStyle objects are implicitly mixed with the parent TextSpans TextSpan.style.',
                  textScaleFactor: 1.0,
                  textAlign: TextAlign.center,
                  softWrap: true,
                  maxLines: 3, // 3 行
                  overflow: TextOverflow.ellipsis, // 剪切 加省略号
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  )),
              Text.rich(
                TextSpan(
                  text: 'TextSpan.....',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 24.0,
                  ),
                  children: <TextSpan>[
                    new TextSpan(
                      text: 'aaaaa.....',
                      style: new TextStyle(
                        color: Colors.blueGrey,
                      ),
                    ),
                    new TextSpan(
                      text: 'bbbbbb.....',
                      style: new TextStyle(
                        color: Colors.cyan,
                      ),
                    ),
                    new TextSpan(
                      text: 'Tap点击......',
                      style: new TextStyle(
                        color: Colors.blueGrey,
                      ),
                      recognizer: new TapGestureRecognizer()
                        ..onTap = () {
                          //增加一个点击事件
                          print('被点击了........');
                        },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
