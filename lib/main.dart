import 'package:flutter/material.dart';

void main() {
  runApp(const DogLifeApp());
}

class DogLifeApp extends StatelessWidget {
  const DogLifeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DogLife',
      theme: ThemeData(
      scaffoldBackgroundColor: Colors.white,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.pets,
                size: 100,
                color: Colors.orange,
              ),
              const SizedBox(height: 50),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle: const TextStyle(color: Colors.orange),
                  prefixIcon: const Icon(Icons.person, color: Colors.orange),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.orange),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder:OutlineInputBorder(
                    borderSide: const BorderSide(color: )
                  )
                )
                )
            ],
          )

          ),
        ));
  }}