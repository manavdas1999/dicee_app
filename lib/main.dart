import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: const Text("Dicee!"),
        ),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int dicenum1 = 6;
  int dicenum2 = 6;

  void getRandomDice(){
    setState(() {
      dicenum1 = Random().nextInt(6) + 1;
      dicenum2 = Random().nextInt(6) + 1;
    });

  }


  @override
  Widget build(BuildContext context) {
    getRandomDice();
    return Container(
      child: Center(
        child: Row(
          children: [
            Expanded(
                child: TextButton(
                  onPressed: (){
                    getRandomDice();
                  },
                  child: Image(image: AssetImage('images/dice$dicenum1.png'),),
                ),
              ),
            Expanded(
              child: TextButton(
                onPressed: (){
                  getRandomDice();
                },
                child: Image(image: AssetImage('images/dice$dicenum2.png'),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

