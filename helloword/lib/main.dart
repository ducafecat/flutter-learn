import 'package:flutter/material.dart';

// 一、编写最基础 helloword
// main(List<String> args) {
//   // 第一步 runApp(...)
//   runApp(
//       // 第二步 MaterialApp
//       MaterialApp(
//     // 第三步 指定 widget
//     home: Text('hello word!'),
//   ));
// }

// 二、采用界面脚手架 标题 侧栏 正文
// main(List<String> args) {
//   // 第一步 runApp(...)
//   runApp(
//       // 第二步 MaterialApp
//       MaterialApp(
//     // 第三步 指定 widget
//     home:
//         // 第四步 页面脚手架
//         Scaffold(
//       // 第五步 程序标题
//       appBar: AppBar(
//         title: Text('我们第一个程序'),
//       ),
//       // 第六步 侧栏
//       drawer: Drawer(
//         child: Text('侧栏'),
//       ),
//       // 正文
//       body: Text('hello word!'),
//     ),
//   ));
// }

// 三、布局 样式 图片
main(List<String> args) {
  // 第一步 runApp(...)
  runApp(
      // 第二步 MaterialApp
      MaterialApp(
    // 第三步 指定 widget
    home:
        // 第四步 页面脚手架
        Scaffold(
      // 第五步 程序标题
      appBar: AppBar(
        title: Text('我们第一个程序'),
      ),
      // 第六步 侧栏
      drawer: Drawer(
        child: Text('侧栏'),
      ),
      // 正文
      body:
          // 居中
          Center(
        child: Column(
          children: <Widget>[
            // 载入图片
            Image.asset('assets/p1.jpg'),
            // 文字
            Text(
              '雷神',
              // 样式
              style: TextStyle(fontSize: 28, color: Colors.red),
            ),
          ],
        ),
      ),
    ),
  ));
}
