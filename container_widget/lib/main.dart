import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body:

            // 容器组件
            Container(
          constraints: BoxConstraints.expand(
            height: 200.0,
          ),
          margin: const EdgeInsets.all(20.0),
          padding: const EdgeInsets.all(8.0),

          // 背景色
          // color: Colors.teal.shade700,

          // 子Widget居中
          alignment: Alignment.centerLeft,

          // 子Widget元素
          child: Text('Hello World',
              style: Theme.of(context)
                  .textTheme
                  .display1
                  .copyWith(color: Colors.white)),

          // 背景装饰
          decoration: BoxDecoration(
            // 背景色
            color: Colors.blueAccent,
            // 圆角
            // borderRadius: BorderRadius.all(
            //   Radius.circular(20.0),
            // ),
            // 渐变
            gradient: RadialGradient(
              colors: [Colors.red, Colors.orange],
              center: Alignment.topLeft,
              radius: .98,
            ),
            // 阴影
            boxShadow: [
              BoxShadow(
                blurRadius: 2,
                offset: Offset(0, 2),
                color: Colors.blue,
              ),
            ],
            // 背景图
            // image: DecorationImage(
            //   image: AssetImage('assets/flutter.png'),
            //   fit: BoxFit.cover,
            // ),
            // 背景混合模式
            backgroundBlendMode: BlendMode.color,
            // 形状
            shape: BoxShape.circle,
          ),

          // 前景装饰
          // foregroundDecoration: BoxDecoration(
          //   image: DecorationImage(
          //     image: AssetImage('assets/flutter.png'),
          //   ),
          // ),

          // Container旋转
          // transform: Matrix4.rotationZ(0.1),
        ),

        //
      ),
    );
  }
}
