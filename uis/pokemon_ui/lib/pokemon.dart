import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokemon_ui/presentation/home_screen.dart';
import 'package:provider/provider.dart';

import 'domain/models/pokemon_model.dart';

// import 'features/home/home_screen.dart';

class Pokemon extends StatelessWidget {
  const Pokemon({super.key});

  @override
  Widget build(BuildContext context) {
    // var themeCubit = BlocProvider.of<ThemeCubit>(context, listen: true);
    // var isDark = themeCubit.isDark;

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => PokemonModel()),
      ],
      child: MaterialApp(
        color: Colors.white,
        title: 'Flutter Pokedex',
        // theme: isDark ? Themings.darkTheme : Themings.lightTheme,
        // navigatorKey: AppNavigator.navigatorKey,
        theme: ThemeData(
          primarySwatch: Colors.orange,
          textTheme: GoogleFonts.poppinsTextTheme(),
        ),
        debugShowCheckedModeBanner: false,
        // onGenerateRoute: AppNavigator.onGenerateRoute,
        home: const HomeScreen(),
        // builder: (context, child) {
        //   if (child == null) return const SizedBox.shrink();

        //   final data = MediaQuery.of(context);
        //   final smallestSize = min(data.size.width, data.size.height);
        //   final textScaleFactor =
        //       min(smallestSize / AppConstants.designScreenSize.width, 1.0);

        //   return MediaQuery(
        //     data: data.copyWith(
        //       textScaleFactor: textScaleFactor,
        //     ),
        //     child: child,
        //   );
        // },
      ),
    );
  }
}
