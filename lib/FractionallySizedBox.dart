import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:io';
import 'pages/good_list_page.dart';


class FractionallySizedBoxs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FractionallySizedBox百分比布局示例'),
        leading: new IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: (){
              Navigator.pop(context);
            }
        ),
      ),
      body: Container(
        color: Colors.blueGrey,
        height: 200.0,
        width: 200.0,
        child: FractionallySizedBox(
          alignment: Alignment.topLeft,//元素左上角对齐
          widthFactor: 0.5,//宽度因子
          heightFactor: 1.5,//高度因子
          child: Container(
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}




