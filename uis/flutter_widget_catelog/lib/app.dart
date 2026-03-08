import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_catelog/src/features/onboard/presentation/pages/onboard.dart';
import 'package:google_fonts/google_fonts.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Flutter Widgets catelog Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      home: const Onboard(),
      debugShowCheckedModeBanner: false,
    );
  }
}
