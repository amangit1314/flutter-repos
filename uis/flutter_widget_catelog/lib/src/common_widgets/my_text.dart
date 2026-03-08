import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  final FontWeight fontWeight;
  final FontStyle? fontStyle;
  final TextAlign? textAlign;
  final TextOverflow? textOverflow;
  final TextDirection? textDirection;
  final TextBaseline? textBaseline;
  final double? letterSpacing;
  final double? wordSpacing;
  final int? maxLines;
  final bool? softWrap;
  final TextDecoration? textDecoration;
  final TextDecorationStyle? textDecorationStyle;
  final TextStyle? style;

  const MyText(
      {Key? key,
      required this.text,
      required this.fontSize,
      required this.color,
      required this.fontWeight,
      this.style,
      this.fontStyle,
      this.textAlign,
      this.textOverflow,
      this.textDirection,
      this.textBaseline,
      this.letterSpacing,
      this.wordSpacing,
      this.maxLines,
      this.softWrap,
      this.textDecoration,
      this.textDecorationStyle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      textAlign: textAlign,
      softWrap: softWrap,
      overflow: textOverflow,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
        fontStyle: fontStyle,
        textBaseline: textBaseline,
      ),
    );
  }
}
