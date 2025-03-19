import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iot_mukrata_project/views/home_ui.dart';
import 'package:iot_mukrata_project/views/splash_screen_ui.dart';

void main() {
  runApp(const Mookrata());
}

class Mookrata extends StatefulWidget {
  const Mookrata({super.key});

  @override
  State<Mookrata> createState() => _MookrataState();
}

class _MookrataState extends State<Mookrata> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeUI(),
      theme: ThemeData(
        textTheme: GoogleFonts.kanitTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
    );
  }
}
