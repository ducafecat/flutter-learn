import 'package:flutter/material.dart';
import 'package:news/utils/screen_util.dart';

/// 间距组件
class MyPadding extends StatelessWidget {
  final child;
  final double left, top, right, bottom;
  const MyPadding(
      {Key key,
      this.child,
      this.left = 0,
      this.top = 0,
      this.right = 0,
      this.bottom = 0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: mySetEdgeInsetsLTRB(left, top, right, bottom),
      child: child ?? Container(),
    );
  }
}
