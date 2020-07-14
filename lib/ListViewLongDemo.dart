import 'package:flutter/material.dart';


class ListViewLongDemo extends StatelessWidget {

  //列表数据集
  final List<String> items=new List<String>.generate(500, (i) => "Item $i");

  @override
  Widget build(BuildContext context) {
    final title = "长列表示例";

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
          leading: new IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: (){
                Navigator.pop(context);
              }
          ),
        ),
        //使用ListView.builder来构造列表项
        body: ListView.builder(
          //列表长度
          itemCount: items.length,
          //列表项构造器 context为上下文 index表示列表项索引
          itemBuilder: (context,index) {
            //返回列表项
            return ListTile(
              //左侧图标
              leading: Icon(Icons.phone),
              //文本内容
              title: Text('${items[index]}'),
            );
          },
        ),
      ),
    );
  }
}
