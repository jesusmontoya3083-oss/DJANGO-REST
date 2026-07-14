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
      title: 'Hola Mundo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Mi Primera App Flutter'),
          backgroundColor: Colors.blue,
        ),
        body: const Center(
          child: Text(
            '¡Hola Mundo!',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}