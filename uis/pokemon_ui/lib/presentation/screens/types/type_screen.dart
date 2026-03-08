import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokemon_ui/presentation/screens/types/type_grid.dart';

import '../../widgets/main_app_bar.dart';
import '../../widgets/pokeball_background.dart';

// Class that is related to creating the whole type-effects page
class TypeEffectScreen extends StatelessWidget {
  List<Widget> _buildHeader(BuildContext context, bool innerBoxIsScrolled) {
    return [
      MainSliverAppBar(
        title: 'Type Effects',
        context: context,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PokeballBackground(
      child: NestedScrollView(
        headerSliverBuilder: _buildHeader,
        body: TypeEffectGrid(),
      ),
    );
  }
}
