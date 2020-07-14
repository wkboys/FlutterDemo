import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class cupertino extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cupertino导航组件集',
      theme: ThemeData.light(), //浅色主题
      home: MyPage(context),
    );
  }
}

class MyPage extends StatefulWidget {
  BuildContext pageContext;
  MyPage(this.pageContext);

  @override
  _MyPageState createState() => _MyPageState(pageContext);
}

class _MyPageState extends State<MyPage> {
  BuildContext pageContext;
  _MyPageState(this.pageContext);
  @override
  Widget build(BuildContext context) {
    //最外层导航选项卡
    return CupertinoTabScaffold(
      //底部选项卡
      tabBar: CupertinoTabBar(
        backgroundColor: CupertinoColors.lightBackgroundGray, //选项卡背景色
        items: [
          //选项卡项 包含图标及文字
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            title: Text('主页'),
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.conversation_bubble),
            title: Text('聊天'),
          ),
        ],
      ),
      tabBuilder: (context, index) {
        //选项卡绑定的视图
        return CupertinoTabView(
          builder: (context) {
            switch (index) {
              case 0:
                return HomePage(pageContext);
                break;
              case 1:
                return ChatPage();
                break;
              default:
                return Container();
            }
          },
        );
      },
    );
  }
}

//主页
class HomePage extends StatelessWidget {
  BuildContext pageContext;
  HomePage(this.pageContext);
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      //基本布局结构，包含内容和导航栏
      navigationBar: CupertinoNavigationBar(
        //导航栏 只包含中部标题部分
        middle: Text("主页"),
        leading: new FlatButton(
          child: Text(
            '🔙',
            style: TextStyle(fontSize: 14.0),
          ),
           onPressed: (){
             Navigator.of(pageContext).pop();
           },
        ),
      ),
      child: Center(
        child: Text(
          '主页',
          style: Theme.of(context).textTheme.button,
        ),
      ),
    );
  }
}

//聊天页面
class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        //导航栏 包含左中右三部分
        middle: Text("聊天面板"),//中间标题
        trailing: Icon(CupertinoIcons.add),//右侧按钮
        leading: Icon(CupertinoIcons.back),//左侧按钮
      ),
      child: Center(
        child: Text(
          '聊天面板',
          style: Theme.of(context).textTheme.button,
        ),
      ),
    );
  }
}
