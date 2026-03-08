import 'package:flutter/material.dart';
import 'package:pokemon_ui/presentation/components/poke_tile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange[200],
        child: const Icon(
          Icons.catching_pokemon_outlined,
          color: Colors.white,
        ),
        onPressed: () {},
        // onPressed: () => Navigator.of(context).pushReplacement(
        //   MaterialPageRoute(
        //     builder: (context) => const Pokedex(),
        //   ),
        // ),
      ),
      backgroundColor: Colors.white,
      body: const HomeBody(),
    );
  }
}

class HomeBody extends StatelessWidget {
  const HomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: const [
          SizedBox(height: 25),
          Text(
            'Pokemons',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 25),
          PokeTile(
            name: 'Arceus',
            image: 'images/arceus.png',
            type: '???',
            color: Colors.white,
            attack: 'Judgement',
          )
          // Flexible(
          //     // child:
          //     // Consumer<PokemonModel>(
          //     //   builder: (context, value, child) {
          //     //     return
          //     child: GridView.builder(
          //   physics: const ScrollPhysics(),
          //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          //     crossAxisCount: 2,
          //     childAspectRatio: 1 / 1.2,
          //   ),
          //   itemCount: pokemons.length,
          //   itemBuilder: (context, index) {
          //     return PokemonTile(
          //       name: pokemons[0][0],
          //       image: pokemons[0][1],
          //       type: pokemons[0][2],
          //       color: pokemons[0][4],
          //       // attack: pokemons[index][3],

          //       // onPressed: () => Provider.of<PokemonModel>(
          //       //   context,
          //       //   listen: false,
          //       // ).addPokemon(index),
          //     );
          //   },
          // )),
        ],
      ),
    );
  }
}

class PokemonTile extends StatelessWidget {
  final String name;
  final String image;
  final String type;
  final String? attack;
  final Color? color;
  final VoidCallback? onPressed;

  const PokemonTile({
    super.key,
    required this.name,
    required this.image,
    required this.type,
    this.attack,
    this.color,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 180,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: height * .03),
              height: height * .1,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text(
              name,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: color,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: height * .03),
              child: Text(
                type,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: color,
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
