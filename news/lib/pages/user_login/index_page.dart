import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news/configs/theme.dart';
import 'package:news/utils/screen_util.dart';
import 'package:news/utils/widget_util.dart';

class UserLoginPage extends StatefulWidget {
  UserLoginPage({Key key}) : super(key: key);

  _UserLoginPageState createState() => _UserLoginPageState();
}

class _UserLoginPageState extends State<UserLoginPage> {
  // app 标志
  Widget _buildAppLogo() {
    return Center(
      child: Column(
        children: <Widget>[
          MyPadding(top: mySetHeight(60)),
          Image.asset(
            'assets/app_logo.png',
            height: mySetHeight(86),
            fit: BoxFit.fitHeight,
          ),
          MyPadding(top: mySetHeight(20)),
          Text(
            'Login to continue',
            style: TextStyle(
              color: Color(THEME_TEXTFILED_COLOR),
              fontSize: mySetFontSize(20),
            ),
          )
        ],
      ),
    );
  }

  // 用户名 密码
  Widget _buildInputForm() {
    return Container(
      padding: mySetEdgeInsetsLTRB(
        mySetFontSize(47),
        mySetFontSize(78),
        mySetFontSize(47),
        mySetFontSize(33),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Username
          TextField(
            style: TextStyle(
              color: Colors.white,
            ),
            decoration: InputDecoration(
              labelText: 'Username',
              labelStyle: TextStyle(
                color: Color(THEME_TEXTFILED_COLOR),
                fontSize: mySetFontSize(15),
              ),
              enabledBorder: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: Color(THEME_TEXTFILED_HINT_COLOR))),
              focusedBorder: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: Color(THEME_TEXTFILED_HINT_COLOR))),
              hintText: 'Enter your username',
              hintStyle: TextStyle(
                color: Color(THEME_TEXTFILED_HINT_COLOR),
                fontSize: mySetFontSize(21),
              ),
            ),
          ),
          // Password
          TextField(
            style: TextStyle(
              color: Colors.white,
            ),
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Password',
              labelStyle: TextStyle(
                color: Color(THEME_TEXTFILED_COLOR),
                fontSize: mySetFontSize(15),
              ),
              enabledBorder: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: Color(THEME_TEXTFILED_HINT_COLOR))),
              focusedBorder: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: Color(THEME_TEXTFILED_HINT_COLOR))),
              hintText: 'Enter your password',
              hintStyle: TextStyle(
                color: Color(THEME_TEXTFILED_HINT_COLOR),
                fontSize: mySetFontSize(21),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance =
        ScreenUtil(width: 450, height: 800, allowFontScaling: true)
          ..init(context);

    return Column(
      children: <Widget>[
        _buildAppLogo(),
        _buildInputForm(),
      ],
    );
  }
}
