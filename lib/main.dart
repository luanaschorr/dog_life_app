import 'package:flutter/material.dart';
import 'telas/login_screen.dart';
import 'telas/add_pet.dart';
import 'telas/home_screen.dart';

void main() {
  runApp(const DogLifeApp());
}

class DogLifeApp extends StatelessWidget {
  const DogLifeApp({super.key});
  // testando pipeline
  // testeeeee
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AdoPatinhas',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Nunito',
        inputDecorationTheme: InputDecorationTheme(
          labelStyle: TextStyle(
            fontFamily: 'Nunito',
            color: Colors.orange,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: HomeScreen(),
    );
  }
}
