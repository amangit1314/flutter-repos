import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final String txt;
  final double txtSize;
  final Color txtColor;
  final FontWeight txtWeight;
  const MyText({
    Key? key,
    this.txtColor = Colors.black,
    required this.txt,
    this.txtWeight = FontWeight.bold,
    required this.txtSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      style: TextStyle(
        fontSize: txtSize,
        color: txtColor,
        fontWeight: txtWeight,
      ),
    );
  }
}
