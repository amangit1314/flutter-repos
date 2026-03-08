import 'package:flutter/material.dart';
import 'my_text.dart';

class MyButton extends StatelessWidget {
  final Color color;
  final double height;
  final double width;
  final IconData? icon;
  final Color? iconColor;
  final BorderRadiusGeometry borderRadius;
  final MyText txt;
  final int padding;
  final BoxShadow shadow;
  final Function onPressed;

  const MyButton({
    Key? key,
    required this.color,
    required this.height,
    required this.width,
    this.borderRadius = const BorderRadius.all(Radius.circular(20)),
    required this.txt,
    required this.padding,
    required this.shadow,
    required this.onPressed,
    this.iconColor = Colors.white,
    this.icon = Icons.arrow_right,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onPressed,
      child: Container(
        padding: const EdgeInsets.all(20),
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: color,
          borderRadius: borderRadius,
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(icon!, color: iconColor),
              MyText(
                text: txt.text,
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
