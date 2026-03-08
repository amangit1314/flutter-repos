import 'package:flutter/material.dart';

final List pokemons = [
  // ['Name', 'Image', 'Type', 'Attack', 'Color']
  [
    'Arceus',
    'img/arceus.jpg',
    '???',
    'Judgement',
    Colors.white,
  ],
  [
    'Blastoise',
    'img/blastoise.jpg',
    'Wate ',
    'Hydro Cannon',
    Colors.blue[100],
  ],
  [
    'Blaziken',
    'img/blaziken.png',
    'Fire/Fight',
    'Blast Burn',
    Colors.red[100],
  ],
  [
    'Charizard',
    'img/charizard.png',
    'Fire/Fly',
    'Blast Burn',
    Colors.red[100],
  ],
  [
    'Chesnaught',
    'img/chesnaught.png',
    'Grass/Fight',
    'Solarbeam',
    Colors.green[100],
  ],
  [
    'Cinderace',
    'img/cinderace.png',
    'Fire/Fight',
    'Pyro Ball',
    Colors.red[100],
  ],
  [
    'Decidueye',
    'img/decidueye.png',
    'Grass/Ghost',
    'Leaf Storm',
    Colors.green[100],
  ],
  [
    'Delphox',
    'img/delphox.png',
    'Fire/Psychic',
    'Psychic',
    Colors.red[100],
  ],
  [
    'Emboar',
    'img/emboar.jpg',
    'Fire/Fight' 'Blast Burn',
    Colors.red[100],
  ],
  [
    'Empoleon',
    'img/empoleon.png',
    'Water/Steel',
    'Hydro Pump',
    Colors.blue[100],
  ],
  [
    'Feraligator',
    'img/feraligator.png',
    'Water',
    'Hydro Cannon',
    Colors.blue[100],
  ],
  [
    'Greninja',
    'img/greninja.png',
    'Water/Dark',
    'Giga Impact/Dark Chaos',
    Colors.blue[100],
  ],
  [
    'Incineroar',
    'img/incineroar.png',
    'Fire/Dark',
    'Fire Blast',
    Colors.red[100],
  ],
  [
    'Infernape',
    'img/infernape.png',
    'Fire/Fight' 'Blast Burn',
    Colors.red[100],
  ],
  [
    'Inteleon',
    'img/inteleon.png',
    'Water',
    'Snipe Shot',
    Colors.blue[100],
  ],
  [
    'Meganium',
    'img/meganium.png',
    'Grass/Fairy',
    'Frenzy Plant',
    Colors.green[100],
  ],
  [
    'Primerina',
    'img/primerina.png',
    'Water/Fairy',
    'Hydro Pump',
    Colors.blue[100],
  ],
  [
    'Rillaboom',
    'img/rillaboom.png',
    'Grass',
    'Drum Beating',
    Colors.green[100],
  ],
  [
    'Samurott',
    'img/samurott.jpg',
    'Water/Fight',
    'Secret Sword',
    Colors.blue[100],
  ],
  [
    'Sceptile',
    'img/sceptile.png',
    'Grass/Dragon',
    'Frenzy Plant',
    Colors.green[100],
  ],
  [
    'Serperior',
    'img/serperior.jpg',
    'Grass',
    'Frenzy Plant',
    Colors.green[100],
  ],
  [
    'Swampert',
    'img/swampert.jpg',
    'Water/Ground',
    'Hrdeo Cannon',
    Colors.blue[100],
  ],
  [
    'Tortera',
    'img/tortera.jpg',
    'Grass/Ground',
    'Frenzy Plant',
    Colors.green[100],
  ],
  [
    'Typhlosion',
    'img/typhlosion.png',
    'Fire',
    'Blast Burn',
    Colors.red[100],
  ],
  [
    'Venusuar',
    'img/venusuar.png',
    'Grass/Poison',
    'Frenzy Plant',
    Colors.green[100],
  ],
];

class PokemonModel extends ChangeNotifier {
  final List _pokedexPokemons = [];
  // get pokemons => _pokemons;
  // get pokedexPokemons => _pokedexPokemons;

  // void addPokemon(int index) {
  //   _pokedexPokemons.add(_pokemons[index]);
  //   notifyListeners();
  // }

  void removePokemon(int index) {
    _pokedexPokemons.removeAt(index);
    notifyListeners();
  }

  void clearPokedex() {
    _pokedexPokemons.clear();
    notifyListeners();
  }

  void removeDuplicates() {
    _pokedexPokemons.toSet().toList();
    notifyListeners();
  }

  // count
  int get count => _pokedexPokemons.length;
  // calculate total price
  // String calculateTotal() {
  //   double totalPokemons = 0;
  //   for (int i = 0; i < pokedexPokemons.length; i++) {
  //     totalPokemons += double.parse(pokedexPokemons[i][1]);
  //   }
  //   return totalPokemons.toStringAsFixed(2);
  // }
}
