import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:io';
import 'pages/good_list_page.dart';



class FittedBoxs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FittedBox缩放布局示例'),
        leading: new IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: (){
              Navigator.pop(context);
            }
        ),
      ),
      //外部容器
      body: Container(
        color: Colors.grey,
        width: 250.0,
        height: 250.0,
        //缩放布局
        child: FittedBox(
          //宽高等比填充
          fit: BoxFit.contain,
          //对齐属性 左上角对齐
          alignment: Alignment.topLeft,
          //内部容器
          child: Container(
            color: Colors.deepOrange,
            child: Text("缩放布局"),
          ),
        ),
      ),
    );
  }
}



