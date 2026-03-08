import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PokeTile extends StatelessWidget {
  final String name;
  final String image;
  final String type;
  final String attack;
  final Color? color;
  final VoidCallback? onPressed;

  const PokeTile({
    Key? key,
    required this.name,
    required this.image,
    required this.type,
    required this.attack,
    this.color,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: color,
        ),
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Image.asset(
                'assets/$image',
                height: 48,
              ),
            ),
            Text(
              'Name - $name',
              style: const TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Attack - $attack',
              style: const TextStyle(
                color: Colors.black,
                fontSize: 12,
              ),
            ),
            Flexible(
              child: Row(
                children: [
                  Text(
                    'Type - $type',
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    icon: const FaIcon(Icons.catching_pokemon_outlined),
                    onPressed: onPressed,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
