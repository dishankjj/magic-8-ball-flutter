import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(BallPage());

class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int index = 1;

  @override
  Widget build(BuildContext context) {
    void askTheBall() {
      setState(() {
        index = Random().nextInt(5) + 1;
      });
    }
    return MaterialApp(
      title: 'Ask Me Anything Ball',
      color: Colors.blue,
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.blue.shade900,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              child: FlatButton(
                child: Image.asset('images/ball$index.png'),
                onPressed: () => askTheBall(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

