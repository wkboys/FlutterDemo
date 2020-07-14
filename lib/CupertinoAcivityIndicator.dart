import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class CupertinoActivityIndicatorDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CupertinoActivityIndicator示例',
      home: Scaffold(
        appBar: AppBar(
          title: Text('CupertinoActivityIndicator示例'),
          leading: new IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: (){
                Navigator.pop(context);
              }
          ),
        ),
        body: Center(
          child: CupertinoActivityIndicator(
            radius: 60.0,//值越大加载的图形越大
          ),
        ),
      ),
    );
  }
}
