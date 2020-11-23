import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      appBar: AppBar(
          title: Text('Ask me anything'), backgroundColor: Colors.indigo),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: FlatButton(
            onPressed: () {
              setState(() {
                ballNumber = Random().nextInt(4) + 1;
                print('$ballNumber');
              });
            },
            child: Image.asset('images/ball$ballNumber.png')),
      ),
    );
  }
}
