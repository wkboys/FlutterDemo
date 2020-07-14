import 'package:flutter/material.dart';

class RaisedButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RaisedButton示例',
      home: Scaffold(
        appBar: AppBar(
          title: Text('RaisedButton组件示例'),
          leading: new IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: (){
                Navigator.pop(context);
              }
          ),
        ),
        body: Center(
          //RaisedButton具有一种立体感
          child: RaisedButton(
            //按下事件响应
            onPressed: () {
              //按下事件处理
            },
            //添加按钮文本
            child: Text('RaisedButton组件'),
          ),
        ),
      ),
    );
  }
}
