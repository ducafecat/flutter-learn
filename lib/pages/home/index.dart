import 'package:flutter/material.dart';
import '../utils/routes.dart';
import 'index_main.dart';

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
