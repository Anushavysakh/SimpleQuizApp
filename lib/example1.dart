import 'package:flutter/material.dart';

import 'my_custom_widget.dart';

class Example1 extends StatelessWidget {
  const Example1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Widget'),
      ),
      body: SafeArea(
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('Hello world'),
            MyCustomWidget(ontap: () {
              print('Data1 parent widget');
            },)],
        )),
      ),
    );
  }
}
