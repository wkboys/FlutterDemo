import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;


class gethttp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "请求示例",
      home: Scaffold(
        appBar: AppBar(
          title: Text("http  请求示例"),
          leading: new IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: (){
                Navigator.pop(context);
              }
          ),
        ),
        body: Center(
          child: RaisedButton(
            onPressed: (){
              //请求后台url 路径 ip+post+请求接口
              var url='http://rmtcenter.gdwlcloud.com/gift/gift.json';
              //向后台发起请求
              http.get(url).then((response){
                print("状态：${response.statusCode}");
                Utf8Decoder utf8decoder=new Utf8Decoder();
                var data=utf8decoder.convert(response.bodyBytes);
                print("正文：$data");
                Fluttertoast.showToast(
                    msg: "data="+data,
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.CENTER,
                    timeInSecForIos: 1,
                    backgroundColor: Colors.greenAccent,
                    textColor: Colors.black
                );
              });
            },
            child: Text("发起http请求"),
          ),
        ),
      ),
    );
  }
}