import 'package:flutter/material.dart';
import 'dart:math';


void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int numbl = 1;
  int numbr = 1;
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: (){
                diceChange();
                print('Left Button was pressed. Random Number $numbl');
              },
              child: Image.asset('images/dice$numbl.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: (){
                diceChange();
                print('Right Button was pressed. Random Number $numbr');
              },
              child: Image.asset('images/dice$numbr.png'),
            ),
          ),
        ],
      ),
    );
  }


  diceChange(){
  return setState(() {
      numbr = 1 + Random().nextInt(6);
      numbl = 1 + Random().nextInt(6);
      });
  }
}



