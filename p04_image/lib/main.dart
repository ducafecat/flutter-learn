import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

const _imgUrl =
    'https://quotefancy.com/media/wallpaper/3840x2160/18771-Thomas-Jefferson-Quote-If-you-want-something-you-have-never-had.jpg';
const _assetImg = 'assets/images/react.jpeg';
const _assetHeaderImg = 'assets/images/header.png';

main(List<String> args) {
  runApp(MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text('my app')),
          body: Container(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              /// assets
//              Image.asset(_assetImg),

              // /// 网络读取
              // Image.network(_imgUrl),

              // /// NetworkImage
              // Image(image: NetworkImage(_imgUrl)),

              // /// 占位图
              // FadeInImage(
              //     fadeInCurve: Curves.bounceIn,
              //     placeholder: AssetImage(_assetImg),
              //     image: NetworkImage(_imgUrl))

              // /// 原型头像
              // CircleAvatar(
              //     backgroundColor: Colors.brown.shade800,
              //     child: Text('圆角图片'),
              //     backgroundImage: AssetImage(_assetImg),
              //     radius: 50.0),

              // /// 图标
              // ImageIcon(
              //   NetworkImage(_imgUrl),
              //   size: 100,
              // ),

              // /// ClipRRect 圆角
              // ClipRRect(
              //   child: Image.network(_imgUrl),
              //   borderRadius: BorderRadius.all(Radius.circular(20)),
              // ),

              // /// 圆角矩形框
              // Container(
              //   width: 200,
              //   height: 80,
              //   decoration: BoxDecoration(
              //     shape: BoxShape.rectangle,
              //     borderRadius: BorderRadius.circular(10.0),
              //     image: DecorationImage(
              //         image: NetworkImage(_imgUrl), fit: BoxFit.cover),
              //   ),
              // ),

              /// 椭圆图
//              ClipOval(
//                child: Image.network(
//                  _imgUrl,
//                  scale: 8.5,
//                ),
//              ),

//              Text('混色'),
//              Image.asset(
//                _assetHeaderImg,
//                color: Colors.amber,
//                colorBlendMode: BlendMode.dstATop,
//              )

              Text('裁剪'),
              Image.asset(
                _assetImg,
                width: 400,
                height: 50,
                fit: BoxFit.cover,
              )
            ],
          )))));
}
