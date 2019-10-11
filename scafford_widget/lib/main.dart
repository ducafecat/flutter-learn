import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // APP 标题
      title: 'Material App',

      // APP 颜色
      color: Colors.yellow,

      // 样式
      theme: ThemeData(primaryColor: Colors.green),

      // 主机暗色模式 android 下无效 ios 可以
      darkTheme: ThemeData(primaryColor: Colors.yellow),

      // 调试显示材质网格
      debugShowMaterialGrid: false,

      // 显示性能叠加
      showPerformanceOverlay: false,

      // 检查缓存图片的情况
      checkerboardRasterCacheImages: false,

      // 检查不必要的setlayer
      checkerboardOffscreenLayers: false,

      // 显示语义调试器
      showSemanticsDebugger: false,

      // 显示debug标记 右上角
      debugShowCheckedModeBanner: false,

      // 主页
      home: Scaffold(
        // 菜单栏
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),

        // 悬浮按钮
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add_photo_alternate),
        ),

        // 悬浮按钮位置
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

        // 固定在下方显示的按钮
        persistentFooterButtons: [
          Text('persistentFooterButtons1'),
          Text('persistentFooterButtons2'),
        ],

        // 左侧 侧滑抽屉菜单
        drawer: Drawer(
          child: Text('data'),
        ),

        // 右侧 侧滑抽屉菜单
        endDrawer: Drawer(
          child: Text('data'),
        ),

        // 底部菜单
        bottomNavigationBar: Text('bottomNavigationBar'),

        // 底部拉出菜单
        bottomSheet: Text('bottomSheet'),

        // 背景色
        backgroundColor: Colors.amberAccent,

        // 自动适应底部padding
        resizeToAvoidBottomPadding: true,

        // 压缩顶部菜单空间
        primary: false,

        // drawerDragStartBehavior: DragStartBehavior.start,

        // 正文
        body: Builder(
          builder: (BuildContext context) {
            return Center(
              child: Container(
                child: RaisedButton(
                  onPressed: () {
                    // Scaffold.of(context).openDrawer();
                    Scaffold.of(context).showSnackBar(new SnackBar(
                      content: new Text('Hello!'),
                    ));
                  },
                  child: Text('data'),
                ),
              ),
            );
          },
        ),
      ),

      //
    );
  }
}
