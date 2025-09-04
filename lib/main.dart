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

  void decrement(){
    print('Decrement');
  }

  void increment(){
    print('Increment');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment:
            MainAxisAlignment.center,

        children: [
          const Text(
            'Pode entrar!',
            style: TextStyle(
              fontSize: 26,
              color: Colors.deepOrangeAccent,
              fontWeight: FontWeight.w700,
            ),
          ),
          const Text(
            '0',
            style: TextStyle(
              fontSize: 35,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            TextButton(
            onPressed: decrement,
            child: Text('Saiu', 
            style:  TextStyle(color:Colors.deepOrange,
                    fontSize: 20, ),
                    ),
            ),
            TextButton(
            onPressed: increment,
            child: Text('Entrou',
            style:  TextStyle(
              color:Colors.deepOrange,
              fontSize: 20,
              ),
            ),
            )
          ],),

        ],
      ),
    );
  }
}

