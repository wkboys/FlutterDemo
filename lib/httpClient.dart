import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:io';

import 'package:fluttertoast/fluttertoast.dart';


class httpClient extends StatelessWidget {

  void getHttpClientData() async{
    try{
      HttpClient httpClient=HttpClient();
      HttpClientRequest request=await httpClient.getUrl(
          Uri.parse("http://rmtcenter.gdwlcloud.com/gift/gift.json")
      );
      HttpClientResponse response=await request.close();
      var result=await response.transform(utf8.decoder).join();
      print("data="+result);
      Fluttertoast.showToast(
          msg: "data="+result,
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIos: 1,
          backgroundColor: Colors.greenAccent,
          textColor: Colors.black
      );
      httpClient.close();
    }catch(e){
      print("请求失败 ： $e");
    }
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "请求示例",
      home: Scaffold(
        appBar: AppBar(
          title: Text("httpClient  请求示例"),
          leading: new IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: (){
                Navigator.pop(context);
              }
          ),
        ),
        body: Center(
          child: RaisedButton(
            child: Text("发起httpClient请求"),
            onPressed: getHttpClientData,
          ),
        ),
      ),
    );
  }
}

