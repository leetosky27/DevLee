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
      title: 'Alejandra flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text("MI PRIMERA APP"),
          backgroundColor: const Color.fromARGB(255, 135, 5, 158),
        ),
        body: Column(
          children: [
            Text("hola mundo", style: TextStyle(fontSize: 30)),  
            Container(
              color: const Color.fromARGB(255, 238, 141, 255),
              width: 200,
              height: 100,
              child: Center(child: Text("hola mundo", style: TextStyle(fontSize: 30))),
            )
          ],
        )
      )
    );
  }
}