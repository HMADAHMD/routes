import 'dart:html';

import 'package:flutter/material.dart';
import 'package:routes/ScreenTwo.dart';
import 'package:routes/ThirdScreen.dart';

void main() {
  runApp(MyApp());
}

var screen1color = Color.fromARGB(255, 235, 21, 254);
var screen2color = Color.fromARGB(255, 41, 33, 255);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomeScreen(),
      routes: {
        //'/secScreen': (context) =>  ScreenTwo(),
        //'/thirdScreen': (context) => ThirdScreen(),
      },
    );
  }
}

String value = '';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HomeScreen"),
        backgroundColor: const Color.fromARGB(255, 172, 216, 251),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: TextField(
              autofocus: false,
              autocorrect: false,
              onChanged: (text) {
                value = text;
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ReusableButton(
            color: screen1color,
            Textchild: const Text(
              "Screen 2",
              style: TextStyle(fontSize: 30),
            ),
            Working: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ScreenTwo(value: value);
              }));
            },
          ),
          const SizedBox(
            height: 20,
          ),
          ReusableButton(
            color: screen2color,
            Textchild: const Text(
              'Screen 3',
              style: TextStyle(fontSize: 30),
            ),
            Working: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ThirdScreen(value: value);
              }));
            },
          )
        ],
      ),
    );
  }
}

class ReusableButton extends StatelessWidget {
  ReusableButton(
      {required this.color, required this.Textchild, required this.Working});
  Color color;
  Widget Textchild;
  Function Working;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ElevatedButton(
        child: Textchild,
        onPressed: () {
          Working();
        },
      ),
    );
  }
}
