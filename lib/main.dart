import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  String activeDice = 'assets/images/dice-1.png';

  void rollDice() {
    setState(() {
      var dice = Random().nextInt(6) + 1;
      activeDice = 'assets/images/dice-$dice.png';
      print(activeDice);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.blue,
                Colors.red,
                Colors.green,
              ],
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  activeDice,
                  width: 200,
                ),
                const SizedBox(height: 20),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    padding: EdgeInsets.all(16),
                  ),
                  onPressed: rollDice,
                  child: Text("Roll Dice"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
