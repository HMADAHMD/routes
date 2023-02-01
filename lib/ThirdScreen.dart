import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("ThirdScreen"),
          backgroundColor: const Color.fromARGB(255, 235, 21, 254),
        ),
      ),
    );
  }
}
