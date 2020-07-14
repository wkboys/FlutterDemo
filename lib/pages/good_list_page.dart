import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_app/model/good_list_model.dart';
import 'package:flutter_app/service/http_service.dart';
import 'package:fluttertoast/fluttertoast.dart';

class GoodListPage extends StatefulWidget{
  _GoodListpageState createState() => _GoodListpageState();
}

class _GoodListpageState extends State<GoodListPage>{

  GoodListModel goodList=GoodListModel([]);
  var scrollContoroller = ScrollController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getGoods();
  }

  void getGoods() async{
    var url='http://rmtcenter.gdwlcloud.com/gift/gift.json';
    var formData={'shopId':'001'};
    await request(url,formData: formData).then((value){
//      var data = json.decode(value.toString());
//      print('商品列表 数据 json 格式：：：'+data.toString());
      Fluttertoast.showToast(
          msg: "data="+value.toString(),
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIos: 1,
          backgroundColor: Colors.greenAccent,
          textColor: Colors.black
      );
//      setState(() {
//        goodList=GoodListModel.fromJson(data);
//      });
    });
  }

  Widget _ListWidget(List newList,int index){
    return Container(
      padding: EdgeInsets.only(top: 5.0,bottom: 5.0),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(width: 1.0,color: Colors.black12)
        ),
      ),
      child: Row(
        children: <Widget>[
          _goodsImage(newList,index),
          SizedBox(
            width: 10,
          ),
          Column(
            children: <Widget>[
              _goodsName(newList,index),
              _goodsPrice(newList,index),
            ],
          )
        ],
      ),
    );
  }
  //商品图片
  Widget _goodsImage(List newList, int index) {
    return Container(
      width: 150,
      height: 150,
      child: Image.network(newList[index].image,fit: BoxFit.fitWidth,),
    );
  }

  //商品名称
  Widget _goodsName(List newList, int index) {
    return Container(
      padding: EdgeInsets.all(5.0),
      width: 200,
      child: Text(
        newList[index].name,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(fontSize: 18),
      ),
    );
  }

  //商品价格
  Widget _goodsPrice(List newList, int index) {
    return Container(
      margin: EdgeInsets.only(top: 20.0),
      width: 200,
      child: Row(
        children: <Widget>[
          Text(
            '价格:￥${newList[index].presentPrice}',
            style: TextStyle(color: Colors.red),
          ),
          Text(
            '￥${newList[index].oriPrice}',
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    //通过商品列表数组长度判断是否有数据
    if(goodList.data.length > 0){
      return ListView.builder(
        //滚动控制器
        controller: scrollContoroller,
        //列表长度
        itemCount: goodList.data.length,
        //列表项构造器
        itemBuilder: (context, index) {
          //列表项 传入列表数据及索引
          return _ListWidget(goodList.data, index);
        },
      );
    }
    //商品列表没有数据时返回空容器
    return Container();
  }
}