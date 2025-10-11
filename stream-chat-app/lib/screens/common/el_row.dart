import 'package:flutter/material.dart';

class ERow extends StatelessWidget {
  late final AssetImage forImage;
  late final String name;
  late final String message;
  //late double radius;
  ERow(
      {Key? key,
      required this.forImage,
      required this.message,
      required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          SizedBox(width: 10),
          CircleAvatar(
            radius: 27,
            foregroundImage: forImage,
          ),
          SizedBox(height: MediaQuery.of(context).size.height / 99, width: 9),
          Column(
            children: [
              Text(
                name,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Text(message, style: TextStyle(fontSize: 13)),
            ],
          )
        ],
      ),
    );
  }
}
