import 'package:flutter/material.dart';
import 'package:news/configs/theme.dart';
import 'package:news/utils/index.dart';

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
            'assets/images/app-logo.png',
            height: mySetHeight(86),
            fit: BoxFit.fitHeight,
          ),
          MyPadding(top: mySetHeight(40)),
          Text(
            'Login to continue',
            style: TextStyle(
              color: Color(THEME_TEXT_2_COLOR),
              fontSize: mySetFontSize(20),
            ),
          ),
        ],
      ),
    );
  }

  // 用户名 密码 忘记密码
  Widget _buildInputForm() {
    return Container(
      padding: mySetEdgeInsetsLTRB(
        mySetWidth(47),
        mySetWidth(78),
        mySetWidth(47),
        mySetWidth(33),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Username
          TextField(
            style: TextStyle(
              color: Color(THEME_TEXT_1_COLOR),
            ),
            decoration: InputDecoration(
              labelText: 'Username',
              labelStyle: TextStyle(
                color: Color(THEME_TEXT_2_COLOR),
                fontSize: mySetFontSize(15),
              ),
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(THEME_TEXT_HINT_COLOR))),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(THEME_TEXT_HINT_COLOR))),
              hintText: 'Enter your username',
              hintStyle: TextStyle(
                color: Color(THEME_TEXT_HINT_COLOR),
                fontSize: mySetFontSize(21),
              ),
            ),
          ),
          // Password
          TextField(
            style: TextStyle(
              color: Color(THEME_TEXT_1_COLOR),
            ),
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Password',
              labelStyle: TextStyle(
                color: Color(THEME_TEXT_2_COLOR),
                fontSize: mySetFontSize(15),
              ),
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(THEME_TEXT_HINT_COLOR))),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(THEME_TEXT_HINT_COLOR))),
              hintText: 'Enter your password',
              hintStyle: TextStyle(
                color: Color(THEME_TEXT_HINT_COLOR),
                fontSize: mySetFontSize(21),
              ),
            ),
          ),
          // forget pass
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                onPressed: () {},
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(
                    color: Color(THEME_TEXT_2_COLOR),
                    fontSize: mySetFontSize(15),
                  ),
                ),
                padding: mySetEdgeInsetsAll(0),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Continue
  Widget _buildBtnContinue() {
    return SizedBox(
      height: mySetWidth(60),
      width: myScreenWidth() - mySetWidth(47) * 2,
      child: OutlineButton(
        onPressed: () {},
        child: Text(
          'Continue',
          style: TextStyle(
            color: Color(THEME_TEXT_1_COLOR),
            fontSize: mySetFontSize(18),
          ),
        ),
        borderSide: BorderSide(
          color: Color(THEME_TEXT_1_COLOR), //Color of the border
          style: BorderStyle.solid, //Style of the border
          width: 1, //width of the border
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(22.0)),
        ),
      ),
    );
  }

  // login facebook
  Widget _buildBtnFacebook() {
    return Container(
      height: mySetWidth(60),
      color: Color(0xFF3D79D4),
      child: FlatButton(
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/images/facebook-logo.png',
              height: mySetWidth(19),
            ),
            MyPadding(left: mySetWidth(12)),
            Text(
              'Login with Facebook',
              style: TextStyle(
                  color: Color(THEME_TEXT_1_COLOR),
                  fontSize: mySetFontSize(19)),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    myScreenInit(context, 450, 800);

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/iphone-7-plus-wallpaper.jpg'),
            fit: BoxFit.cover),
      ),
      child: Column(
        children: <Widget>[
          _buildAppLogo(),
          _buildInputForm(),
          _buildBtnContinue(),
          Spacer(),
          _buildBtnFacebook(),
        ],
      ),
    );
  }
}
