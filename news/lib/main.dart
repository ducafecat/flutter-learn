import 'package:flutter/material.dart';
import 'package:news/configs/theme.dart';
import 'package:news/pages/user_login/index_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(THEME_BACKGROUND_COLOR),
        body: UserLoginPage(),
      ),
    );
  }
}
