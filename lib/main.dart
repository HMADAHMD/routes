import 'package:flutter/material.dart';
import 'package:routes/ScreenTwo.dart';
import 'package:routes/ThirdScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomeScreen(),
      routes: {
        //'/secScreen': (context) =>  ScreenTwo(),
        '/thirdScreen': (context) => ThirdScreen(),
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
          ReusableButton(),
          const SizedBox(
            height: 20,
          ),
          ReusableButton()
        ],
      ),
    );
  }
}

class ReusableButton extends StatelessWidget {
  const ReusableButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, '/thirdScreen');
        },
        child: Container(
          height: 60,
          width: double.infinity,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 235, 21, 254),
              borderRadius: BorderRadius.circular(7)),
          child: const Center(
            child: Text(
              "Screen 3",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
