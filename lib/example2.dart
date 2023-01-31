import 'package:flutter/material.dart';
class Example2 extends StatelessWidget
{
  const Example2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Example2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CButtons(voidCallback: () { print('VoidCallback') ;},)
          ],
        ),
      ),
    );
  }
}
class CButtons extends StatelessWidget {

 final VoidCallback voidCallback;

 CButtons({required this.voidCallback});

 @override
  Widget build(BuildContext context) {
    return  ElevatedButton(onPressed: voidCallback, child: Text('Button1'));
  }
}

