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
      backgroundColor: const Color.fromARGB(255, 216, 216, 216),
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
          

          const Padding(
            padding: EdgeInsetsGeometry.all(32),
            child: Text(
            '0',
            style: TextStyle(
              fontSize: 35,
            ),
          ), 
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            TextButton(
              
              onPressed: decrement,
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                fixedSize: const Size(100, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(8),
                )

              ),
              child: Text('Saiu', 
              style:  TextStyle(color:Colors.deepOrange,
                      fontSize: 20,),
                    ),
            ),
            const SizedBox(width: 32,),
            TextButton(
            onPressed: increment,
            style: TextButton.styleFrom(
              backgroundColor: Colors.white,
              fixedSize: const Size(100, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(8),
                )
            ),
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

