import 'package:flutter/material.dart';


class AlertDialogDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AlertDialog组件示例',
      home: Scaffold(
        appBar: AppBar(
          title: Text('AlertDialog组件示例'),
          leading: new IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: (){
                Navigator.pop(context);
              }
          ),
        ),
        body: Center(
          //添加对话框
          child: AlertDialog(
            //对话框标题
            title: Text('提示'),
            //对话框内容部分
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text('是否要删除?'),
                  Text('一旦删除数据不可恢复！'),
                ],
              ),
            ),
            //对话框操作按钮
            actions: <Widget>[
              FlatButton(
                child: Text('确定'),
                onPressed: () {},
              ),
              FlatButton(
                child: Text('取消'),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
