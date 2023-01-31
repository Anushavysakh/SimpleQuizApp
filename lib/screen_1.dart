import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom widget'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // CustomButton(
            //    buttonName: 'Button1',
            //   color: Colors.red,
            //   onTap: buttonName, onPress: printing,),
            CustomButton(
                buttonName: 'Button2',
                color: Colors.red,
                onTap: buttonName,
                onPress: () {
                  printing();
                }, )
          ],
        ),
      ),
    );
  }

  void buttonName(String buttonName, Color color) {
    print(buttonName);
    print(color);
    print('widget');
  }

  printing() {
    print('inside printing');
  }
}

class CustomButton extends StatelessWidget {
  String buttonName;
  Color color;
  void Function(
    String,
    Color,
  ) onTap;
  VoidCallback onPress;

  CustomButton(
      {super.key,
      required this.buttonName,
      required this.color,
      required this.onTap,
      required this.onPress});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          onTap(buttonName, color);
          onPress;
        },
        child: Text(
          buttonName,
          style: TextStyle(color: color),
        ));
  }
}
