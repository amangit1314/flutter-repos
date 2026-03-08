import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? backgroundColor;
  final Color? textColor;
  final double? fontSize;
  final double? borderRadius;
  final EdgeInsetsGeometry? padding;
  final double? minWidth;
  final double? height;
  final FontWeight? fontWeight;
  final EdgeInsetsGeometry? margin;
  final BorderSide? border;

  const CustomButton({Key? key, 
    required this.text,
    required this.onPressed,
    this.backgroundColor,
    this.textColor,
    this.fontSize,
    this.borderRadius,
    this.padding,
    this.minWidth,
    this.height,
    this.fontWeight,
    this.margin,
    this.border,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          foregroundColor: textColor ?? Colors.white, backgroundColor: backgroundColor ?? Theme.of(context).primaryColor,
          textStyle: TextStyle(
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 8.0),
            side: border ?? BorderSide.none,
          ),
          padding:
              padding ?? const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          minimumSize: Size(minWidth ?? 0, height ?? 0),
        ),
        child: Text(text),
      ),
    );
  }
}
