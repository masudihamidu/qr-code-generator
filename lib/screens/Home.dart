import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class Home extends StatefulWidget {
  const Home({super.key, required this.title});
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Home> {
  TextEditingController _editingController = TextEditingController(text: '');

  String data = ''; // Initialize with a default value

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent,
          title: const Text('QR code generator'),
        ),

        body: SingleChildScrollView (
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [

              TextField(
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(10),
                  border: OutlineInputBorder(),
                  labelText: 'QR code',
                  hintText: 'Enter letters or number to generate',
                  suffixIcon: Icon(Icons.qr_code_2),
                ),

                controller: _editingController,
              ),

              const Center(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                ),
              ),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(335, 60),
                  primary: Colors.lightBlueAccent,
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                ),
                onPressed: () {
                  setState(() {
                    data = _editingController.text;
                  });
                },
                child: const Text('Generate QR Code'),
              ),

              const Center(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                ),
              ),

              if (data != null && data.isNotEmpty) // Only show the QR code if data is not empty
                Center(
                  child: QrImageView(
                    data: '$data',
                    version: QrVersions.auto,
                    size: 200.0,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
