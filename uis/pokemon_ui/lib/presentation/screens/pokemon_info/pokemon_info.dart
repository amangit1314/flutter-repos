import 'dart:math';

import 'package:flutter/material.dart' hide AnimatedSlide;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_ui/presentation/screens/pokemon_info/state_provider.dart';

import '../../../core/configs/colors.dart';
import '../../../core/configs/images.dart';
import '../../../core/utils/string.dart';
import '../../../domain/entities/pokemon.dart';
import '../../../domain/entities/pokemon_props.dart';
import '../../../domain/entities/pokemon_types.dart';
import '../../../states/pokemon/bloc/pokemon_bloc.dart';
import '../../../states/pokemon/bloc/pokemon_event.dart';
import '../../../states/pokemon/pokemon_selector.dart';
import '../../../states/theme/theme_cubit.dart';
import '../../widgets/animated_fade.dart';
import '../../widgets/animated_slide.dart';
import '../../widgets/auto_slideup_panel.dart';
import '../../widgets/hero.dart';
import '../../widgets/main_app_bar.dart';
import '../../widgets/main_tab_view.dart';
import '../../widgets/pokemon_image.dart';
import '../../widgets/pokemon_type.dart';
import '../../widgets/progress.dart';

part 'sections/background_decoration.dart';
part 'sections/pokemon_info_card.dart';
part 'sections/pokemon_info_card_about.dart';
part 'sections/pokemon_info_card_basestats.dart';
part 'sections/pokemon_info_card_evolutions.dart';
part 'sections/pokemon_overall_info.dart';

class PokemonInfo extends StatefulWidget {
  const PokemonInfo({super.key});

  @override
  _PokemonInfoState createState() => _PokemonInfoState();
}

class _PokemonInfoState extends State<PokemonInfo>
    with TickerProviderStateMixin {
  late AnimationController _slideController;
  late AnimationController _rotateController;

  @override
  void initState() {
    _slideController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );

    _rotateController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 5000),
    )..repeat();

    super.initState();
  }

  @override
  void dispose() {
    _slideController.dispose();
    _rotateController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PokemonInfoStateProvider(
      slideController: _slideController,
      rotateController: _rotateController,
      child: Scaffold(
        body: Stack(
          children: const <Widget>[
            _BackgroundDecoration(),
            _PokemonInfoCard(),
            _PokemonOverallInfo(),
          ],
        ),
      ),
    );
  }
}
