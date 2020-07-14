import 'package:flutter/material.dart';
class BoxDecoration1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BoxDecoration装饰盒子-背景图示例'),
        leading: new IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: (){
              Navigator.pop(context);
            }
        ),
      ),
      body: Center(
          child: Container(
            width: 300.0,
            height: 300.0,
            //装饰器
            decoration: BoxDecoration(
              //背景色
              color: Colors.grey,
              //图片装饰器
              image: DecorationImage(
                image: ExactAssetImage('images/1.jpeg'),//添加image属性
                fit: BoxFit.cover,//填充类型
              ),
            ),
          )
      ),
    );
  }
}
