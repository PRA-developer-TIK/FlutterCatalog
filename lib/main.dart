import "package:flutter/material.dart";
import 'package:sampleapp/screens/home_page.dart';
import 'package:sampleapp/screens/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sampleapp/utils/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: LoginPage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: "/login",
      routes: {
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginROute: (context) => LoginPage(),
      },
    );
  }
}
