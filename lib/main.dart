import 'package:flutter/material.dart';
import 'package:qr_code_generator/screens/Home.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget{
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>{
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 2),(){
      setState(() {
        _isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Qr code generator',
      theme: ThemeData(),
      home: _isLoading ? _buildLoader() :
          const Home(title: '')
    );
  }

  Widget _buildLoader(){
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}



