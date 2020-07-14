import 'dart:io';
import 'dart:math';
import 'package:dio/dio.dart';
import 'dart:async';

Future request(url,{formData}) async{
  try{
    Response response;
    Dio dio=Dio();
//    dio.options.contentType=ContentType.parse('application/x-www-form-urlencoded') as String;
    response=await dio.get(url);
    if(response.statusCode==200){
      return response;
    }else{
      throw Exception('后端接口异常，请检查代码和服务器运行情况。。。');
    }
  }catch(e){
    return print('error:::$e');
  }
}