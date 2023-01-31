import 'package:flutter/material.dart';

class MyCustomWidget extends StatelessWidget {
  final VoidCallback ontap;

  const MyCustomWidget({Key? key, required this.ontap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
     children: [
      GestureDetector(child: Text('data'),onTap:  ontap,)
     ],
    );
  }
}
