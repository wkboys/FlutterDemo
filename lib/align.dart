import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:io';
import 'pages/good_list_page.dart';


class AlignDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Align对齐布局示例'),
        leading: new IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: (){
              Navigator.pop(context);
            }
        ),
      ),
      body: Stack(
          children: <Widget>[
            //左上角
            Align(
              //对齐属性 确定位置
              alignment: FractionalOffset(0.0, 0.0),
              //添加图片
              child: Image.asset('images/1.jpeg',width: 128.0,height: 128.0,),
            ),
            //右上角
            Align(
              alignment: FractionalOffset(1.0,0.0),
              child: Image.asset('images/1.jpeg',width: 128.0,height: 128.0,),
            ),
            //水平垂直方向居中
            Align(
              alignment: FractionalOffset.center,
              child: Image.asset('images/3.jpeg',width: 128.0,height: 128.0,),
            ),
            //左下角
            Align(
              alignment: FractionalOffset.bottomLeft,
              child: Image.asset('images/2.jpeg',width: 128.0,height: 128.0,),
            ),
            //右下角
            Align(
              alignment: FractionalOffset.bottomRight,
              child: Image.asset('images/2.jpeg',width: 128.0,height: 128.0,),
            ),
          ]
      ),
    );
  }
}


