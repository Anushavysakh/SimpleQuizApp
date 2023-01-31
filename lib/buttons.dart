import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const Buttons({Key? key, required this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Colors.grey, // Background Color
          ),
          onPressed: () {
            onChanged("Button1");
          },
          child: Text('Button1'),
        ),
        TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.grey, // Background Color
            ),
            onPressed: () { onChanged("Button2");},
            child: Text('Button2')),
        TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.grey, // Background Color
            ),
            onPressed: () {
              onChanged("Button3");
            },
            child: Text('Button3')),
      ]),
    );
  }
}
