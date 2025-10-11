import 'package:aman_stream_chat_app/utils/constants.dart';
import 'package:flutter/material.dart';

class Container extends StatelessWidget {
  final child;
  final Color color, textColor;
  const Container({
    Key? key,
    Decoration? dec,
    required this.child,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
    required EdgeInsets padding,
    required BoxDecoration decoration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30), color: Colors.deepPurple),
      padding: EdgeInsets.all(8),
      child: Stack(
        children: [
          const Image(image: AssetImage("assets/name")),
          const Text(
            "Revolution, they...",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 10),
          ),
        ],
      ),
    );
  }
}
