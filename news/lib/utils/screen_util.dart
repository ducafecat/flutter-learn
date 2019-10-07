import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

myScreenInit(BuildContext context, double width, double height) {
  ScreenUtil.instance =
      ScreenUtil(width: width, height: height, allowFontScaling: true)
        ..init(context);
}

/// 设置宽度按
double mySetWidth(double width) {
  return ScreenUtil.getInstance().setWidth(width);
}

/// 设置宽度按
double mySetHeight(double height) {
  return ScreenUtil.getInstance().setHeight(height);
}

/// 设置 EdgeInsets.fromLTRB
EdgeInsets mySetEdgeInsetsLTRB(
    double left, double top, double right, double bottom) {
  return EdgeInsets.fromLTRB(
      ScreenUtil.getInstance().setWidth(left),
      ScreenUtil.getInstance().setHeight(top),
      ScreenUtil.getInstance().setWidth(right),
      ScreenUtil.getInstance().setHeight(bottom));
}

/// 设置 EdgeInsets.all
EdgeInsets mySetEdgeInsetsAll(value) {
  return EdgeInsets.all(ScreenUtil.getInstance().setWidth(value));
}

/// 设置字体尺寸 设计稿比例
double mySetFontSize(double size) {
  return ScreenUtil.getInstance().setSp(size);
}

/// 设置字体尺寸 设计稿+屏幕 比例
double mySetFontSizeWithSystem(double size) {
  return ScreenUtil(allowFontScaling: true).setSp(size);
}

/// 屏幕宽度
double myScreenWidth() {
  return ScreenUtil.screenWidthDp;
}

/// 屏幕高度
double myScreenHeight() {
  return ScreenUtil.screenHeightDp;
}

/// 底部 bottomBar 高度
double myBottomBarHeight() {
  return ScreenUtil.bottomBarHeight;
}

/// 顶部 statusBar 高度
double myStatusBarHeight() {
  return ScreenUtil.statusBarHeight;
}

/// widget宽度
double myWidgetWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

/// widget高度
double myWidgetHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}
