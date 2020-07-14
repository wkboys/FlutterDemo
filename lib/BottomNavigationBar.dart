import 'package:flutter/material.dart';



class BottomNavigationBars extends StatefulWidget {
  BottomNavigationBars({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<BottomNavigationBars> {
  //当前选中项的索引
  int _selectedIndex = 1;
  //导航栏按钮选中对应数据
  final _widgetOptions = [
    Text('Index 0: 信息'),
    Text('Index 1: 通讯录'),
    Text('Index 2: 发现'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //顶部应用按钮
      appBar: AppBar(
        title: Text('BottomNavigationBar示例'),
        leading: new IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: (){
              Navigator.pop(context);
            }
        ),
      ),
      //中间内容显示区域
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),//居中显示某一个文本
      ),
      //底部导航按钮集
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          //底部导航按钮项 包含图标及文本
          BottomNavigationBarItem(icon: Icon(Icons.chat), title: Text('信息')),
          BottomNavigationBarItem(icon: Icon(Icons.contacts), title: Text('通讯录')),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle), title: Text('发现')),
        ],
        currentIndex: _selectedIndex,//当前选中项的索引
        fixedColor: Colors.deepPurple,//选项中项的颜色
        onTap: _onItemTapped,//选择按下处理
      ),
    );
  }

  //选择按下处理 设置当前索引为index值
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}