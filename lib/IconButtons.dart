import 'package:flutter/material.dart';

class iconButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('图标按钮组件示例'),
        leading: new IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: (){
              Navigator.pop(context);
            }
        ),
      ),
      body: Center(
        //添加图标按钮
        child: IconButton(
          //图标元素
          icon: Icon(Icons.volume_up,size: 48.0,),
          //按钮提示
          tooltip: '按下操作',
          //按下事件响应
          onPressed:(){
            print('按下操作');
          },
        ),
      ),
    );
  }
}
