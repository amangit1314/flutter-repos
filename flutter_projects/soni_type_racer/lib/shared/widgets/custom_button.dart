import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String content;
  final double? height;
  final Color color;
  final Color textColor;
  final double fontSize;
  final bool isHome;
  final VoidCallback onPressed;

  const CustomButton({
    super.key,
    required this.content,
    this.height = 50,
    this.color = Colors.blue,
    this.textColor = Colors.black,
    this.fontSize = 16,
    required this.onPressed,
    this.isHome = false,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: Size(
          !isHome ? width : width / 6,
          height!,
        ),
      ),
      child: Center(
        child: Text(
          content,
          style: TextStyle(
            fontSize: fontSize,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
