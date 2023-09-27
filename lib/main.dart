import 'package:flutter/material.dart';
import 'package:qr_code_generator/screens/Home.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'QR code generator',
      theme: ThemeData(),
      home: const Home(title: '',),
    );
  }
}

