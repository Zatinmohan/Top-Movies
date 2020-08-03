import 'package:flutter/material.dart';
import 'package:topmovies/homepage.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Movies",
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFFFDDC00),
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      home: HomePage(),
    );
  }
}
