import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class urlLaunch extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: '使用第三方包示例',
        home: Scaffold(
        appBar: AppBar(
          title: Text('使用第三方包示例'),
          leading: new IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: (){
                Navigator.pop(context);
              }
          ),
        ),
        body: Center(
          child: RaisedButton(
            onPressed: () {
              //指定url并发起请求
              const url = 'https://github.com';
              //调用url_launcher包里的launch方法
              launch(url);
            },
            child: Text('打开GitHub'),
          ),
        ),
        ),
      );
    }
}


