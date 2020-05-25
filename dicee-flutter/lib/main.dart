import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.green,
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
  int left=1;
  int right=6;
  @override
  Widget build(BuildContext context) {

    void changeDice()
    {
      setState(() {
        right=Random().nextInt(6)+1;
        left=Random().nextInt(6)+1;
      });
    }
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: <Widget>[
            Expanded(
              //flex: 2,
              child: FlatButton(
                onPressed: ()
                {
                  changeDice();
                },
                child: Image.asset('images/dice$left.png'),
              ),
            ),
            Expanded(
              //flex: 1,
              child: FlatButton(
                onPressed: () {
                  changeDice();
                },
                child: Image(
                  image: AssetImage('images/dice$right.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

