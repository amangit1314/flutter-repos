import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:soni_type_racer/features/home/presentation/home_screen.dart';
import 'package:soni_type_racer/features/room/presentation/create_room_screen.dart';
import 'package:soni_type_racer/features/room/presentation/join_room_screen.dart';
import 'package:soni_type_racer/shared/providers/client_state_provider.dart';
import 'package:soni_type_racer/shared/providers/game_state_provider.dart';

import 'features/game/presentation/create_game_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => GameStateProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ClientStateProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'Type Racer',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: GoogleFonts.nunitoTextTheme(),
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => const HomeScreen(),
          '/create-room': (context) => const CreateRoomScreen(),
          '/join-room': (context) => const JoinRoomScreen(),
          '/game-screen': (context) => const GameScreen(),
        },
      ),
    );
  }
}
