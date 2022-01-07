import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();

  void playSound(int sound) => player.play('note$sound.wav');

  Expanded buildKey(Color color, String note, int soundNumber) {
    final TextStyle style = TextStyle(
        fontSize: 48,
        color: Colors.black,
        fontWeight: FontWeight.bold
    );

    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: color,
        ),
        onPressed: () {
          playSound(soundNumber);
        },
        child: Text(
          '$note',
          style: style,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildKey(Colors.red, 'C', 1),
                buildKey(Colors.orange, 'D', 2),
                buildKey(Colors.yellow, 'E', 3),
                buildKey(Colors.lightGreen, 'F', 4),
                buildKey(Colors.green, 'G', 5),
                buildKey(Colors.blue, 'A', 6),
                buildKey(Colors.purple, 'B', 7),
                buildKey(Colors.deepPurple, 'C', 8)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
