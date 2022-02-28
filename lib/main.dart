import 'package:app/homepage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'loginPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int Data = 1;
    return MaterialApp(
      // home: const HomePage(),
      theme: ThemeData(
          primarySwatch: Colors.amber,
          fontFamily: GoogleFonts.playfairDisplay().fontFamily),

      darkTheme: ThemeData(
          primarySwatch: Colors.red, scaffoldBackgroundColor: Colors.white),
      routes: {
        "/": (context) => LoginPage(),
        "/home": ((context) => const HomePage()),
      },
    );
  }
}
