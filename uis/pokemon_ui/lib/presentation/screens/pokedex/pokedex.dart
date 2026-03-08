import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/configs/durations.dart';
import '../../../core/configs/images.dart';
import '../../../domain/entities/pokemon.dart';
import '../../../routes.dart';
import '../../../states/pokemon/bloc/pokemon_bloc.dart';
import '../../../states/pokemon/bloc/pokemon_event.dart';
import '../../../states/pokemon/bloc/pokemon_state.dart';
import '../../../states/pokemon/pokemon_selector.dart';
import '../../modals/generation_modal.dart';
import '../../modals/search_modal.dart';
import '../../widgets/animated_overlay.dart';
import '../../widgets/fab.dart';
import '../../widgets/main_app_bar.dart';
import '../../widgets/pokeball_background.dart';
import '../../widgets/pokemon_card.dart';
import '../../widgets/pokemon_refresh_control.dart';

part 'sections/fab_menu.dart';
part 'sections/pokemon_grid.dart';

class PokedexScreen extends StatefulWidget {
  const PokedexScreen({super.key});

  @override
  State<StatefulWidget> createState() => _PokedexScreenState();
}

class _PokedexScreenState extends State<PokedexScreen> {
  @override
  Widget build(BuildContext context) {
    return PokeballBackground(
      child: Stack(
        children: const [
          _PokemonGrid(),
          _FabMenu(),
        ],
      ),
    );
  }
}
