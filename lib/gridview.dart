import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:io';
import 'pages/good_list_page.dart';



class GridViews extends StatelessWidget {
@override
Widget build(BuildContext context) {
  //使用generate构造图片列表
  List<Container> _buildGridTitleList(int count) {
    //index为列表项索引
    return List<Container>.generate(count,(int index) => Container(
      //根据索引添加图片路径
      child: Image.asset('images/${index + 1}.jpeg'),
    ),
    );
  }
  //渲染GridView
  Widget buildGrid(){
    return GridView.extent(
      maxCrossAxisExtent: 150.0,//次轴的宽度
      padding: const EdgeInsets.all(4.0),//上下左右内边距
      mainAxisSpacing: 4.0,//主轴元素间距
      crossAxisSpacing: 4.0,//次轴元素间距
      children: _buildGridTitleList(9),//添加9个元素
    );
  }

  return Scaffold(
    appBar: AppBar(
      title: Text('GridView九宫格示例'),
      leading: new IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.pop(context);
          }
      ),
    ),
    body: Center(
      child: buildGrid(),
    ),
  );
}
}


