import 'dart:ui';

import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';


void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Expanded Buildbutton(Color color,int soundNumber){
    return Expanded(
      child: RaisedButton(color: color,
          elevation: 200.0,
          hoverElevation: 1000.0,
          hoverColor: Colors.brown,
          onPressed: () {
            Buildplayer(soundNumber);
          }
      ),
    );
  }
  void Buildplayer(int soundNumber){
    final Player=AudioCache();
    Player.play('note$soundNumber.wav');
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(child: Text('Xylophone')),
        ),
        body: SafeArea(
          child: Column(
           crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Buildbutton(Colors.red, 1),
              Buildbutton(Colors.orange, 2),
              Buildbutton(Colors.yellow, 3),
              Buildbutton(Colors.green, 4),
              Buildbutton(Colors.blue, 5),
              Buildbutton(Colors.indigo, 6),
              Buildbutton(Colors.teal, 7),
            ],
          ),
        ),
      ),
    );
  }
}
