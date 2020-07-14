import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:io';
import 'pages/good_list_page.dart';


class Offstages extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final appTitle = "Offstage控制是否显示组件示例";
    return MaterialApp(
      title: appTitle,
      home: MyHomePage(context,title:appTitle),
    );
  }
}


class MyHomePage extends StatefulWidget {
  final String title;
  BuildContext pageContext;

  MyHomePage(this.pageContext,{Key key,this.title}):super(key:key);

  @override
  _MyHomePageState createState() => _MyHomePageState(pageContext);
}

class _MyHomePageState extends State<MyHomePage> {
  BuildContext pageContext;
  _MyHomePageState(this.pageContext);
  //状态控制是否显示文本组件
  bool offstage = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        leading: new IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: (){
              Navigator.of(pageContext).pop();
            }
        ),
      ),
      body: Center(
        child: Offstage(
          offstage: offstage,//控制是否显示
          child: Text(
            '我出来啦！',
            style: TextStyle(
              fontSize: 36.0,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          //设置是否显示文本组件
          setState(() {
            offstage = !offstage;
          });
        },
        tooltip: "显示隐藏",
        child: Icon(Icons.flip),
      ),
    );
  }
}




