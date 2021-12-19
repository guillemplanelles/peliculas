import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:peliculas_app/screens/screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Peliculas',
      initialRoute: 'home',
      routes: {
        'home': (_) => HomeScreen(),
        'details': (_) => DetailScreen(),
      },
      theme: ThemeData.dark().copyWith(
          appBarTheme: AppBarTheme(
        color: Colors.yellow[600],
        titleTextStyle: GoogleFonts.oswald(
          color: Colors.black,
          fontSize: 20.0,
        ),
      )),
    );
  }
}
