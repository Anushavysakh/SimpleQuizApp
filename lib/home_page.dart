import 'package:flutter/material.dart';

import 'buttons.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String text = " ";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Home Screen",
            style: TextStyle(fontSize: 29),
          ),
          SizedBox(height: 10,),
          Buttons(onChanged: ( value) {
            setState(() {
              text = value;
            });
            print("text"+text);},)
        ],
      ),
    );
  }
}
