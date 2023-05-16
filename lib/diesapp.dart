import 'dart:math';

import 'package:flutter/material.dart';
class diesapp extends StatefulWidget {
  const diesapp({Key? key}) : super(key: key);

  @override
  State<diesapp> createState() => _diesappState();
}

class _diesappState extends State<diesapp> {
  int leftdicenumber=2;
  int rightdicenumder=1;
  void ChangeDicenumber(){
    setState(() {
      leftdicenumber=Random().nextInt(6)+1;
      rightdicenumder=Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(title: Text('Dice app'),),
      body: Row(children: [
        Expanded(child: TextButton(onPressed: ChangeDicenumber, child: Image.asset("dice/dice$leftdicenumber.jpeg"))),
      Expanded( child: TextButton(onPressed: ChangeDicenumber, child: Image.asset("dice/dice$rightdicenumder.jpeg"))),
      ],),

    );
  }
}
