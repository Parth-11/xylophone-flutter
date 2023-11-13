import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  Widget button({Color color = Colors.white, int soundNumber = 1}) {
    return Expanded(
      child: Container(
        child: TextButton(
          onPressed: () {
            playSound(soundNumber);
          },
          child: Text(''),
        ),
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            button(color: Colors.red, soundNumber: 1),
            button(color: Colors.orange, soundNumber: 2),
            button(color: Colors.yellow, soundNumber: 3),
            button(color: Colors.green, soundNumber: 4),
            button(color: Colors.teal, soundNumber: 5),
            button(color: Colors.blue, soundNumber: 6),
            button(color: Colors.purple, soundNumber: 7),
          ],
        )),
      ),
    );
  }
}
