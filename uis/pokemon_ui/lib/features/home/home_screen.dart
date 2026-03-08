import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../domain/models/pokemon_model.dart';
import '../../presentation/components/poke_tile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.all(10),
            sliver: Flexible(
              child: Consumer<PokemonModel>(
                builder: (context, value, child) {
                  return GridView.builder(
                    padding: const EdgeInsets.all(12),
                    physics: const ScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1 / 1.2,
                    ),
                    itemCount: value.pokemons.length,
                    itemBuilder: (context, index) {
                      return PokeTile(
                        name: value.pokemons[index][0],
                        image: value.pokemons[index][1],
                        type: value.pokemons[index][2],
                        color: value.pokemons[index][4],
                        attack: value.pokemons[index][3],
                        onPressed: () =>
                            Provider.of<PokemonModel>(context, listen: false)
                                .addPokemon(index),
                      );
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
