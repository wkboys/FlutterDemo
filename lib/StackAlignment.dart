import 'package:flutter/material.dart';


class StackAlignment extends StatelessWidget {
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
        leading: new IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: (){
              Navigator.pop(context);
            }
        ),
      ),
      body: Center(
        child: stack,
      ),
    );
  }
}