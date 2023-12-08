import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

void playSound(int soundNum) {
  final player = AudioPlayer();
  player.play(AssetSource('note$soundNum.wav'));
}

Expanded buildKey({int soundNum,Color color}) {
  return Expanded(
    child: TextButton(
      onPressed: () {
        playSound(soundNum);
      },
      style: TextButton.styleFrom(
        backgroundColor: color,
      ),
    ),
  );
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(soundNum: 1, color: Colors.red),
              buildKey(soundNum: 2, color: Colors.orange),
              buildKey(soundNum: 3, color: Colors.yellow),
              buildKey(soundNum: 4, color: Colors.green),
              buildKey(soundNum: 5, color: Colors.teal),
              buildKey(soundNum: 6, color: Colors.blue),
              buildKey(soundNum: 7, color: Colors.purple)
            ],
          ),
        ),
      ),
    );
  }
}
