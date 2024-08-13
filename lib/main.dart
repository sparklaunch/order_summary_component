import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:order_summary_component/screens/main_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MaterialApp(
      theme: _buildTheme(Brightness.dark),
      home: const Scaffold(
        backgroundColor: Color.fromRGBO(208, 220, 255, 1),
        body: MainScreen(),
      ),
    ),
  );
}

ThemeData _buildTheme(Brightness brightness) {
  ThemeData baseTheme = ThemeData(brightness: brightness);
  return baseTheme.copyWith(
    textTheme: GoogleFonts.redHatDisplayTextTheme(baseTheme.textTheme),
  );
}
