import 'package:app/homepage.dart';
import 'package:app/routes.dart';
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
//debug delete watermark
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
          primarySwatch: Colors.red, scaffoldBackgroundColor: Colors.white),
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: ((context) => const HomePage()),
        MyRoutes.loginRoute: ((context) => const LoginPage()),
      },
    );
  }
}
