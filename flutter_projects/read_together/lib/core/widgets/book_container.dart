
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'my_text.dart';

class BookContainer extends StatelessWidget {
  final Color color;
  final String headText;
  final String subText;
  const BookContainer({
    Key? key,
    required this.color,
    this.headText = '',
    this.subText = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Row(
        children: [
          Container(
            height: double.maxFinite,
            width: MediaQuery.of(context).size.width * 0.3,
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage(''),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(24),
            ),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsets.all(1),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: Center(
                      child: MyText(
                        txt: headText,
                        txtSize: 20,
                        txtColor: Colors.white,
                        txtWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(CupertinoIcons.chevron_forward),
                    color: Colors.black.withOpacity(0.2),
                  ),
                ],
              ),
              MyText(txt: headText, txtSize: 8),
              MyText(txt: subText, txtSize: 4),
              Container(),
            ],
          )
        ],
      ),
    );
  }
}
