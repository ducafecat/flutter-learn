import 'package:flutter/material.dart';
import '_routes.dart';
import '_mainView.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter 移动APP开发',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainView(title: '首页导航'),
      routes: Routes.getAll(),
    );
  }
}
