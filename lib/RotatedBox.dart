import 'package:flutter/material.dart';


class RotatedBoxs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'RotatedBox旋转盒子示例',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'RotatedBox旋转盒子示例',
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
          child: RotatedBox(
            quarterTurns: 3,//旋转次数，一次为90度
            child: Text(
              'RotatedBox旋转盒子',
              style: TextStyle(fontSize: 28.0),
            ),
          ),
        ),
      ),
    );
  }
}
