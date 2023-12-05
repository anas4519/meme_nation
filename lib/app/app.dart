import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meme_app/themes.dart';
import 'package:meme_app/views/home_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MemeNation',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: MyThemes.lightColorScheme,
        fontFamily: GoogleFonts.dmSans().fontFamily
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: MyThemes.darkColorScheme,
        fontFamily: GoogleFonts.dmSans().fontFamily,
      ),
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      home: const HomeView(),
    );
  }
}