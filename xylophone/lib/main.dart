import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();
  void play(int soundNumber) {
    player.play('note$soundNumber.wav');
  }

  Expanded keys({int soundNumber, Color colour}) {
    return Expanded(
      child: Container(
        child: FlatButton(
          color: colour,
          onPressed: () {
            play(soundNumber);
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            title: Text("Xylophone"),
            backgroundColor: Colors.grey,
            centerTitle: true,
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            // mainAxisSize: MainAxisSize.max,
            children: [
              keys(soundNumber: 1, colour: Colors.red),
              keys(soundNumber: 2, colour: Colors.orange),
              keys(soundNumber: 3, colour: Colors.yellow),
              keys(soundNumber: 4, colour: Colors.amberAccent),
              keys(soundNumber: 5, colour: Colors.lightGreenAccent),
              keys(soundNumber: 6, colour: Colors.cyan),
              keys(soundNumber: 7, colour: Colors.cyanAccent),
            ],
          ),
        ),
      ),
    );
  }
}
