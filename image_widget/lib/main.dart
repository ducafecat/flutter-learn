import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static String _imgUrl =
      'https://quotefancy.com/media/wallpaper/3840x2160/18771-Thomas-Jefferson-Quote-If-you-want-something-you-have-never-had.jpg';
  static String _assetImg = 'assets/images/react.jpeg';
  static String _assetHeaderImg = 'assets/images/header.png';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Image App Bar'),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // assets
                Text('assets'),
                Image.asset(_assetImg),

                // 网络读取
                Text('网络读取'),
                Image.network(_imgUrl),

                // NetworkImage
                Text('NetworkImage'),
                Image(image: NetworkImage(_imgUrl)),

                // 占位图
                Text('占位图'),
                FadeInImage(
                    fadeInCurve: Curves.bounceIn,
                    placeholder: AssetImage(_assetImg),
                    image: NetworkImage(_imgUrl)),

                // 原型头像
                Text('原型头像'),
                CircleAvatar(
                    backgroundColor: Colors.brown.shade800,
                    child: Text('圆角图片'),
                    backgroundImage: AssetImage(_assetHeaderImg),
                    radius: 50.0),

                // 图标
                Text('图标'),
                ImageIcon(
                  NetworkImage(_imgUrl),
                  size: 100,
                ),

                // ClipRRect 圆角
                Text('ClipRRect 圆角'),
                ClipRRect(
                  child: Image.network(_imgUrl),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),

                // 圆角矩形框
                Text('圆角矩形框'),
                Container(
                  width: 200,
                  height: 80,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                        image: NetworkImage(_imgUrl), fit: BoxFit.cover),
                  ),
                ),

                // 椭圆图
                Text('椭圆图'),
                ClipOval(
                  child: Image.network(
                    _imgUrl,
                    scale: 8.5,
                  ),
                ),

                // 混色
                Text('混色'),
                Image.asset(
                  _assetHeaderImg,
                  color: Colors.amber,
                  colorBlendMode: BlendMode.dstATop,
                ),

                // 裁剪
                Text('裁剪'),
                Image.asset(
                  _assetImg,
                  width: 400,
                  height: 50,
                  fit: BoxFit.cover,
                ),

                //
              ],
            ),
          ),
        ),
      ),
    );
  }
}
