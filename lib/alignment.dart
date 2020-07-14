import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:io';
import 'pages/good_list_page.dart';

void main() => runApp(
  MaterialApp(
    title: 'Container容器布局示例',
    home: MyApp(),
  ),
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var stack = Stack(
      //子组件左上角对齐
      alignment: Alignment.topLeft,
      children: <Widget>[
        //底部添加一个头像
        CircleAvatar(
          backgroundImage: AssetImage('images/1.jpeg'),
          radius: 100.0,
        ),
        //上面加一个容器 容器里再放一个文本
        Container(
          decoration: BoxDecoration(
            color: Colors.black38,
          ),
          child: Text(
            '我是超级飞侠',
            style: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack层叠布局示例'),
      ),
      body: Center(
        child: stack,
      ),
    );
  }
}

