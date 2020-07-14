import 'package:flutter/material.dart';

class LimitedBoxs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('LimitedBox限定宽高布局示例'),
          leading: new IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: (){
                Navigator.pop(context);
              }
          ),
        ),
        body: Row(
          children: <Widget>[
            Container(
              color: Colors.grey,
              width: 100.0,
            ),
            LimitedBox(
              maxWidth: 150.0,//设置最大宽度 限定child在此范围内
              child: Container(
                color: Colors.lightGreen,
                width: 250.0,
              ),
            ),
          ],

        )
    );
  }
}

