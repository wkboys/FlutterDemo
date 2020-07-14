import 'package:flutter/material.dart';


class ClipRRects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ClipRRect圆角矩形剪裁示例',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'ClipRRect圆角矩形剪裁示例',
            style: TextStyle(color: Colors.white),
          ),
          leading: new IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: (){
                Navigator.pop(context);
              }
          ),
        ),
        body: Center(
          //圆角矩形
          child: ClipRRect(
            borderRadius: BorderRadius.all(
                //圆角弧度，值越大弧度越大
                Radius.circular(30.0)),
            //固定大小
            child: SizedBox(
              width: 300.0,
              height: 300.0,
              child: Image.asset(
                "images/8.jpeg",
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
