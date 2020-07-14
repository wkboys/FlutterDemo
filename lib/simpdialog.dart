import 'package:flutter/material.dart';


class simpdialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'SimpleDialog组件示例',
      home: Scaffold(
        appBar: AppBar(
          title: Text('SimpleDialog组件示例'),
          leading: new IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: (){
                Navigator.pop(context);
              }
          ),
        ),
        body: Center(
          child: SimpleDialog(
            title: const Text('对话框标题'),
            children: <Widget>[
              SimpleDialogOption(
                onPressed: () {  },
                child: const Text('第一行信息'),
              ),
              SimpleDialogOption(
                onPressed: () {  },
                child: const Text('第二行信息'),
              ),
            ],
          ),

        ),
      ),
    );
  }
}
