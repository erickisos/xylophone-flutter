import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int idx) {
    final player = AudioCache();
    player.play('note$idx.wav');
  }

  Widget buildKey(
          {required String text,
          required Color color,
          required int soundNumber}) =>
      Expanded(
        child: TextButton(
          child: Text(text),
          onPressed: () {
            playSound(soundNumber);
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              color,
            ),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(text: '', color: Colors.red, soundNumber: 1),
              buildKey(text: '', color: Colors.orange, soundNumber: 2),
              buildKey(text: '', color: Colors.yellow, soundNumber: 3),
              buildKey(text: '', color: Colors.green, soundNumber: 4),
              buildKey(text: '', color: Colors.teal, soundNumber: 5),
              buildKey(text: '', color: Colors.blue, soundNumber: 6),
              buildKey(text: '', color: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
