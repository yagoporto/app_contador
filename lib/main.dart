import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment:
            MainAxisAlignment.center,

        children: const [
          Text(
            'Pode entrar!',
            style: TextStyle(
              fontSize: 26,
              color: Colors.deepOrangeAccent,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            '0',
            style: TextStyle(
              fontSize: 35,
            ),
          ),
        ],
      ),
    );
  }
}

