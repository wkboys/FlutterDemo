import 'package:flutter/material.dart';



class otherfont extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('自定义字体'),
        leading: new IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: (){
              Navigator.pop(context);
            }
        ),
      ),
      body: new Center(
        child: new Text(
          '你好 flutter',
          style: new TextStyle(fontFamily: 'myfont',fontSize: 36.0),
        ),
      ),
    );
  }
}
