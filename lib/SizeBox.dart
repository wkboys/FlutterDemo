import 'package:flutter/material.dart';

class SizedBoxs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SizedBox设置具体尺寸示例'),
        leading: new IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: (){
              Navigator.pop(context);
            }
        ),
      ),
      body: SizedBox(
        //固定宽为200.0 高为300.0
        width: 200.0,
        height: 300.0,
        child: const Card(
            child: Text('SizedBox',
              style: TextStyle(
                fontSize: 36.0,
              ),
            ),
        ),
      ),
    );
  }
}

