import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(builder: (_) => Counter()),
      ],
      child: MaterialApp(
        //首页
        title: "provider 示例",
        home: FirstPage(),
      ),
    );
  }
}

class Counter with ChangeNotifier{
  int _count = 0;
  int get count => _count;
  void increment(){
    _count++;
    notifyListeners();
  }
}

//Provider.of<Counter>(context).count

class FirstPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("第一个页面"),
        actions: <Widget>[
          FlatButton(
            child: Text("下一页"),
            onPressed: ()=>
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return SecondPage();
              }))
            ,
          )
        ],
      ),
      body: Center(
          child: Text("${Provider.of<Counter>(context).count}")
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
         Provider.of<Counter>(context).increment();
        },
        child: Icon(Icons.add),
      ),
    );
    // TODO: implement build
    return null;
  }

}

class SecondPage  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("第二个页面"),
      ),
      body: Center(
        child: Text("${Provider.of<Counter>(context).count}"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<Counter>(context).increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

