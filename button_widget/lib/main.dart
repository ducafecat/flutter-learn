import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Button App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Button App Bar'),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // 后退、关闭
                ButtonBar(
                  children: <Widget>[
                    BackButton(
                      color: Colors.orange,
                    ),
                    CloseButton(),
                  ],
                ),

                // 扁平按钮 FlatButton
                ButtonBar(
                  children: <Widget>[
                    FlatButton(
                      child: Text('扁平按钮'),
                      onPressed: () {
                        print('我是扁平按钮');
                      },
                    ),
                    FlatButton(
                      child: Text(
                        '扁平按钮 禁用',
                      ),
                      onPressed: null,
                    ),
                  ],
                ),

                // 扁平带图标按钮 FlatButton.icon
                ButtonBar(
                  children: <Widget>[
                    FlatButton.icon(
                      label: Text('带图标扁平按钮'),
                      icon: Icon(Icons.add_call, size: 18.0),
                      onPressed: () {},
                    ),
                    FlatButton.icon(
                      icon: const Icon(Icons.add_call, size: 18.0),
                      label: const Text('带图标扁平按钮 禁用'),
                      onPressed: null,
                    ),
                  ],
                ),

                // 带框按钮
                ButtonBar(
                  children: <Widget>[
                    OutlineButton(
                      onPressed: () {},
                      child: Text('带框按钮'),
                    ),
                    OutlineButton(
                      onPressed: null,
                      child: Text('带框按钮 禁用'),
                    ),
                  ],
                ),

                // 带框图标按钮
                ButtonBar(
                  children: <Widget>[
                    OutlineButton.icon(
                      label: Text('带框图标按钮'),
                      icon: Icon(Icons.add_to_photos, size: 18.0),
                      onPressed: () {},
                    ),
                    OutlineButton.icon(
                      disabledTextColor: Colors.orange,
                      icon: Icon(Icons.add_to_photos, size: 18.0),
                      label: Text('带框图标按钮 禁用'),
                      onPressed: null,
                    ),
                  ],
                ),

                // 立体按钮
                ButtonBar(
                  children: <Widget>[
                    RaisedButton(
                      child: Text('立体按钮'),
                      onPressed: () {},
                    ),
                    RaisedButton(
                      child: Text('立体按钮 禁用'),
                      onPressed: null,
                    ),
                  ],
                ),

                // 立体按钮带图标
                ButtonBar(
                  children: <Widget>[
                    RaisedButton.icon(
                      icon: Icon(Icons.add, size: 18.0),
                      label: Text('立体按钮带图标'),
                      onPressed: () {},
                    ),
                    RaisedButton.icon(
                      icon: Icon(Icons.add, size: 18.0),
                      label: Text('立体按钮带图标 禁用'),
                      onPressed: null,
                    ),
                  ],
                ),

                // Material按钮
                ButtonBar(
                  children: <Widget>[
                    MaterialButton(
                      child: Text('Material按钮'),
                      onPressed: () {
                        // Perform some action
                      },
                    ),
                    MaterialButton(
                      child: Text('Material按钮 禁用'),
                      onPressed: null,
                    ),
                  ],
                ),

                // RawMaterial按钮
                ButtonBar(
                  children: <Widget>[
                    RawMaterialButton(
                      child: Text('RawMaterial按钮'),
                      onPressed: () {
                        // Perform some action
                      },
                    ),
                    RawMaterialButton(
                      child: Text('RawMaterial按钮 禁用'),
                      onPressed: null,
                    ),
                  ],
                ),

                // 浮动按钮
                ButtonBar(
                  children: <Widget>[
                    FloatingActionButton(
                      child: const Icon(Icons.add),
                      heroTag: '浮动按钮',
                      onPressed: () {
                        // Perform some action
                      },
                      tooltip: '浮动按钮提示1',
                    ),
                    FloatingActionButton(
                      child: const Icon(Icons.add),
                      onPressed: null,
                      heroTag: '浮动按钮 禁用',
                      tooltip: '浮动按钮提示2',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
