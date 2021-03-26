import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(new magicBall());
}

class magicBall extends StatefulWidget {
  @override
  _magicBallState createState() => _magicBallState();
}

class _magicBallState extends State<magicBall> {
  int ranNum = 3;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Magic Ball',
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        appBar: AppBar(
          backgroundColor: Colors.blue.shade900,
          title: Text('Ask  Me  Anything'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: TextButton(
                  child: Image.asset('images/ball$ranNum.png'),
                  onPressed: () {
                    setState(() {
                      ranNum = Random().nextInt(5) +1;
                    });
                  },
                ),
              ),
            ],
          ),
        ),

      ),
    );
  }
}
