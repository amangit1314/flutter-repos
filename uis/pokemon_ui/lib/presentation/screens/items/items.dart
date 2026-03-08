import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/configs/durations.dart';
import '../../../core/configs/images.dart';
import '../../../states/item/item_bloc.dart';
import '../../../states/item/item_event.dart';
import '../../../states/item/item_selector.dart';
import '../../../states/item/item_state.dart';
import '../../modals/generation_modal.dart';
import '../../modals/search_modal.dart';
import '../../widgets/animated_overlay.dart';
import '../../widgets/fab.dart';
import '../../widgets/main_app_bar.dart';
import '../../widgets/pokeball_background.dart';
import '../../widgets/pokemon_refresh_control.dart';
import 'widgets/item_card.dart';

part 'sections/fab_menu.dart';
part 'sections/items_grid.dart';

class ItemsScreen extends StatefulWidget {
  const ItemsScreen({super.key});

  @override
  _ItemsScreenState createState() => _ItemsScreenState();
}

class _ItemsScreenState extends State<ItemsScreen> {
  @override
  Widget build(BuildContext context) {
    return PokeballBackground(
      child: Stack(
        children: const [
          _ItemGrid(),
        ],
      ),
    );
  }
}
