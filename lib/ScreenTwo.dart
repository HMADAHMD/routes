import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget {
  
  ScreenTwo({super.key, required this.value});
  String value;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("ScreenTwo"),
        ),
        body: Center(
            child: Container(
          child: Text("the value is => "+value),
        )),
      ),
    );
  }
}
