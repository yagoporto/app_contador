import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int count = 0;

  void decrement(){
    setState(() {
    count--;
    });
    print(count);
  }

  void increment(){
    setState(() {
    count++;
    });
    print(count);
  }

  bool get isEmpty => count == 0;
  bool get isFull => count >= 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 216, 216, 216),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.jpg'),
            fit: BoxFit.cover,
          )

        ), 
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center,
        
          children: [
            Text(
              isFull ?'Lotado!' : 'Pode entrar!',
              style: TextStyle(
                fontSize: 26,
                color: Colors.deepOrangeAccent,
                fontWeight: FontWeight.w700,
              ),
            ),
            //alert
            Padding(
              padding: EdgeInsetsGeometry.fromLTRB(32, 32, 32, 8),
              child: Container(
                  width: 35,
                  height: 35,
                  decoration:  BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/gif/14.gif'),
                      fit: BoxFit.cover,
                      opacity: isFull ? 1.0 : 0.0, 
                    ),
                  ),
                ), 
            ),

            //contador
            Padding(
              padding: EdgeInsets.fromLTRB(8, 8, 8, 32),
                child: Text(
                  '$count',
                    style: TextStyle(
                    fontSize: 35,
                    color: isFull ? Colors.red :  Colors.white,
                    ),
                  ),
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              TextButton(
                onPressed: isEmpty ? null : decrement,
                style: TextButton.styleFrom(
                  backgroundColor: isEmpty ? Colors.white.withOpacity(0.2) : Colors.white,
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
              onPressed: isFull ? null : increment,
              style: TextButton.styleFrom(
                backgroundColor: isFull ? Colors.white.withOpacity(0.2) : Colors.white,
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
      ),
    );
  }
  }
