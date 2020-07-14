import 'package:flutter/material.dart';
import 'package:flutter_app/BoxDecoration2.dart';
import 'package:flutter_app/BoxDecoration3.dart';
import 'package:flutter_app/BoxDecoration4.dart';
import 'package:flutter_app/BoxDecoration5.dart';
import 'package:flutter_app/CustomPaint2.dart';
import 'package:flutter_app/CustomPaint3.dart';
import 'package:flutter_app/CustomPaint4.dart';
import 'package:flutter_app/CustomPaint5.dart';
import 'package:flutter_app/CustomPaint6.dart';
import 'package:flutter_app/CustomPaint7.dart';
import 'package:flutter_app/CustomPaint8.dart';
import 'package:flutter_app/GridViewDemo.dart';
import 'package:flutter_app/list.dart';
import 'package:flutter_app/padding.dart';
import 'package:flutter_app/pagesjump.dart';
import 'package:flutter_app/pagesjumpfeed.dart';
import 'package:flutter_app/popMenubtn.dart';
import 'package:flutter_app/row.dart';
import 'package:flutter_app/scaffold.dart';
import 'package:flutter_app/scrollList.dart';
import 'package:flutter_app/simpdialog.dart';
import 'package:flutter_app/stateful.dart';
import 'package:flutter_app/table.dart';
import 'package:flutter_app/textfield.dart';
import 'package:flutter_app/transform.dart';
import 'package:flutter_app/urlLaunch.dart';
import 'package:flutter_app/wrap.dart';
import 'AlertDialog.dart';
import 'AppBar.dart';
import 'AspectRatio.dart';
import 'BottomNavigationBar.dart';
import 'BoxDecoration.dart';
import 'Center.dart';
import 'ClipOval.dart';
import 'ClipPath.dart';
import 'ClipRRect.dart';
import 'ClipRect.dart';
import 'ConstrainedBox.dart';
import 'Container.dart';
import 'CupertinoAcivityIndicator.dart';
import 'CupertinoAlertDialog.dart';
import 'CupertionBtn.dart';
import 'CustomPainter1.dart';
import 'DecorateBox1.dart';
import 'DefaultTabController.dart';
import 'Dio.dart';
import 'FluroDemo.dart';
import 'FormLeb.dart';
import 'FractionallySizedBox.dart';
import 'IconButtons.dart';
import 'Icons.dart';
import 'IndexStack.dart';
import 'LimitedBox.dart';
import 'ListViewLongDemo.dart';
import 'MultiProviders.dart';
import 'OpacityDemo.dart';
import 'RaisedButtons.dart';
import 'RotatedBox.dart';
import 'SharedPerfenrences.dart';
import 'SizeBox.dart';
import 'SnackBar.dart';
import 'Sqflite.dart';
import 'StackAlignment.dart';
import 'StackPositioned.dart';
import 'TabBar.dart';
import 'TextDemo.dart';
import 'ViewDemo.dart';
import 'align.dart';
import 'baseline.dart';
import 'cardView.dart';
import 'column.dart';
import 'cupertino.dart';
import 'customTheme.dart';
import 'drawer.dart';
import 'filesave.dart';
import 'fillBox.dart';
import 'flatbutton.dart';
import 'floatActionbtn.dart';
import 'font.dart';
import 'easing.dart';
import 'gestureDetector.dart';
import 'gridview.dart';
import 'handdelete.dart';
import 'http.dart';
import 'httpClient.dart';
import 'listview.dart';
import 'listviewlong.dart';
import 'offstage.dart';
import 'otherfont.dart';
import 'overflowBox.dart';
import 'value.dart';
import 'mask.dart';
import 'charts.dart';
import 'opacity.dart';
import 'hero.dart';
import 'routesDemo.dart';
import 'routesDemo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter功能示例',
//      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Main(),
    );
  }
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    List<String> listName = [
      "使用第三方示例包",
      "状态管理Provider",
      "自定义主题",
      "http请求",
      "httpClient请求",
      "Dio请求",
      "无/有状态组件",
      "Form表单示例",
      "基础列表示例",
      "容器组件示例",
      "水平列表示例",
      "RaisedButton示例",
      "图标按钮组件示例",
      "图标组件示例",
      "网格列表示例",
      "Text demo",
      "长列表示例",
      'AlertDialog组件示例',
      "AppBar应用按钮示例",
      'BottomNavigationBar示例',
      "Card布局示例",
      'Drawer抽屉组件示例',
      'FlatButton扁平按钮组件示例',
      'FloatingActionButton示例',
      "路由处理",
      'PopupMenuButton组件示例',
      'Scaffold脚手架组件示例',
      'SimpleDialog组件示例',
      'SnackBar示例',
      'TabBar选项卡示例',
      "DefaultTabControllerSample",
      'TextField组件示例',
      'Cupertino导航组件集',
      'CupertinoActivityIndicator示例',
      'CupertinoAlertDialog组件示例',
      'CupertinoButton组件示例',
      '布局综合示例',
      'Align对齐布局示例',
      "AspectRatio调整宽高比示例",
      'Baseline基准线布局示例',
      'Center居中布局示例',
      '垂直布局示例',
      'ConstrainedBox限定宽高示例',
      'Container容器布局示例',
    'FittedBox缩放布局示例',
      'FractionallySizedBox百分比布局示例',
    'GridView九宫格示例',
      'Stack层叠布局示例',
      'LimitedBox限定宽高布局示例',
    'ListView布局示例',
      'ListView长文本滚动布局示例',
    "Offstage控制是否显示组件示例",
    'OverflowBox溢出父容器显示示例',
    'Padding填充布局示例',
      '水平布局示例',
    'SizedBox设置具体尺寸示例',
      'Stack布局示例Alignment',
      'Stack布局示例Positioned',
      'Table布局示例',
    'Transform矩阵转换示例',
      'Wrap按宽高自动换行布局示例',
      '滑动删除示例',
      "GestureDetector手势检测",
      '自定义字体',
      'ClipOval圆形剪裁示例',
      'ClipPath路径剪裁示例',
      'ClipRect矩形剪裁示例',
      'ClipRRect圆角矩形剪裁示例',
      'CustomPaint绘制多个点示例',
      'CustomPaint绘制路径示例',
      'CustomPaint绘制嵌套矩形示例',
      'CustomPaint绘制椭圆示例',
      'CustomPaint绘制圆示例',
      'CustomPaint绘制圆弧示例',
      'CustomPaint绘制圆角矩形示例',
      'CustomPaint绘制直线示例',
      'BoxDecoration装饰盒子-背景图示例',
      'BoxDecoration装饰盒子-边框阴影示例',
      'BoxDecoration装饰盒子-边框圆角示例',
      'LinearGradient线性渐变效果',
    'RadialGradient环形渐变效果',
    'Opacity不透明度示例',
      'RotatedBox旋转盒子示例',
      '文件存储示例',
      '传递数据示例',
      '页面跳转返回数据示例',
      "Fluro路由导航示例(企业级)",
      'SharedPreferences示例',
      "Sqflite示例",
      'Flutter动画-字体放大',
      'Flutter动画-缓动动画',
      'Flutter动画-数字变化动画',
      'Flutter动画-遮罩动画',
      'Flutter动画-图表动画',
      'Flutter动画-淡入淡出动画',
      'Flutter动画-页面切换动画',
    ];
    List<Widget> list = [
      urlLaunch(),
      MultiProviders(),
      customTheme(),
      gethttp(),
      httpClient(),
      Dio(),
      stateful(),
      LoginPage(),
      listDemo(),
      BoxDecorations(),
      scrollList(),
      RaisedButtons(),
      iconButtons(),
      IconsDemo(),
      GridViewDemo(),
      TextDemo(),
      ListViewLongDemo(),
      AlertDialogDemo(),
      appBar(),
      BottomNavigationBars(),
      cardView(),
      DrawerDemo(),
      flatbutton(),
      floatActionbtn(),
      routesDemo(),
      popMenuBtn(),
      ScaffoldDemo(),
      simpdialog(),
      snackbar(),
      TabBarSample(),
      DefaultTabControllerSample(),
      TextFieldDemo(),
      cupertino(),
      CupertinoActivityIndicatorDemo(),
      CupertinoAlertDialogDemo(),
      CupertinoBtn(),
      ViewDemo(),
      AlignDemo(),
      AspectRatioDemo(),
      BaselineDemo(),
      CenterDemo(),
      ColumnDemo(),
      ConstrainedBoxs(),
      Containers(),
      FittedBoxs(),
      FractionallySizedBoxs(),
      GridViews(),
      IndexedStacks(),
      LimitedBoxs(),
      ListViews(),
      ListViewLong(),
      Offstages(),
      OverflowBoxs(),
      padding(),
      rowDemo(),
      SizedBoxs(),
      StackAlignment(),
      StackPositioned(),
      table(),
      Transforms(),
      WrapDemo(),
      handDelete(),
      GestureDetectors(),
      otherfont(),
      ClipOvals(),
      ClipPaths(),
      ClipRects(),
      ClipRRects(),
      CustomPaint1(),
      CustomPaint2(),
      CustomPaint3(),
      CustomPaint4(),
      CustomPaint5(),
      CustomPaint6(),
      CustomPaint7(),
      CustomPaint8(),
      BoxDecoration1(),
      BoxDecoration2(),
      BoxDecoration3(),
      BoxDecoration4(),
      BoxDecoration5(),
      opacityDemo(),
      RotatedBoxs(),
      LogInfo(),
      ProductList(),
      FirstPageBack(),
      FluroDemo(),
      spDemo(),
      Sqflite(),
      FontAnimation(),
      EasingAnimation(),
      ValueAnimation(),
      MaskAnimation(),
      ChartsAnimation(),
      OpacityAnimation(),
      HeroAnimation(),

    ];
    List listIcon = [
      Icons.add,Icons.ac_unit,Icons.access_alarm,Icons.access_time,Icons.accessibility,
      Icons.accessible,Icons.accessibility_new,Icons.accessible_forward,Icons.account_balance,
      Icons.account_balance_wallet,Icons.account_box,Icons.account_circle,Icons.list,Icons.ac_unit,
      Icons.beach_access,Icons.add_call,Icons.add_a_photo,Icons.add_alert,Icons.add_box,Icons.add_circle,
      Icons.add_circle_outline,Icons.add_comment,Icons.add_location,Icons.add_photo_alternate,Icons.add_shopping_cart,
      Icons.add_shopping_cart,Icons.add_to_home_screen,Icons.add_to_photos,Icons.add_to_queue,
      Icons.add,Icons.ac_unit,Icons.access_alarm,Icons.access_time,Icons.accessibility,
      Icons.accessible,Icons.accessibility_new,Icons.accessible_forward,Icons.account_balance,
      Icons.account_balance_wallet,Icons.account_box,Icons.account_circle,Icons.list,Icons.ac_unit,
      Icons.beach_access,Icons.add_call,Icons.add_a_photo,Icons.add_alert,Icons.add_box,Icons.add_circle,
      Icons.add_circle_outline,Icons.add_comment,Icons.add_location,Icons.add_photo_alternate,Icons.add_shopping_cart,
      Icons.add_shopping_cart,Icons.add_to_home_screen,Icons.add_to_photos,Icons.add_to_queue,
      Icons.add,Icons.ac_unit,Icons.access_alarm,Icons.access_time,Icons.accessibility,
      Icons.accessible,Icons.accessibility_new,Icons.accessible_forward,Icons.account_balance,
      Icons.account_balance_wallet,Icons.account_box,Icons.account_circle,Icons.list,Icons.ac_unit,
      Icons.beach_access,Icons.add_call,Icons.add_a_photo,Icons.add_alert,Icons.add_box,Icons.add_circle,
      Icons.add_circle_outline,Icons.add_comment,Icons.add_location,Icons.add_photo_alternate,Icons.add_shopping_cart,
      Icons.add_shopping_cart,Icons.add_to_home_screen,Icons.add_to_photos,Icons.add_to_queue,
      Icons.add,Icons.ac_unit,Icons.access_alarm,Icons.access_time,Icons.accessibility,
      Icons.accessible,Icons.accessibility_new,Icons.accessible_forward,Icons.account_balance,
      Icons.account_balance_wallet,Icons.account_box,Icons.account_circle,Icons.list,Icons.ac_unit,
      Icons.beach_access,Icons.add_call,Icons.add_a_photo,Icons.add_alert,Icons.add_box,Icons.add_circle,
      Icons.add_circle_outline,Icons.add_comment,Icons.add_location,Icons.add_photo_alternate,Icons.add_shopping_cart,
      Icons.add_shopping_cart,Icons.add_to_home_screen,Icons.add_to_photos,Icons.add_to_queue,
    ];
    List listColor = new List();
    listColor.addAll(Colors.accents);
    listColor.addAll(Colors.primaries);
    listColor.addAll(Colors.accents);
    listColor.addAll(Colors.primaries);
    listColor.addAll(Colors.accents);
    listColor.addAll(Colors.primaries);
    listColor.addAll(Colors.accents);
    listColor.addAll(Colors.primaries);
    listColor.addAll(Colors.accents);
    listColor.addAll(Colors.primaries);
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter功能示例 （共${list.length}个）'),
      ),

      body: ListView(
        children: list.asMap().keys.map((item) {
          return ListTile(
            title: Text(listName[item]),
            subtitle: Text(list[item].toString()),
            leading:  Icon(
                listIcon[item],
                color: listColor[item]
            ),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => list[item]),
              );
            },
          );
        }).toList(),
      ),
    );
  }
}




