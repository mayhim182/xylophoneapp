import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
// import 'package:audioplayer/audioplayer.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatefulWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  @override
  State<XylophoneApp> createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {

  void playFunc(int trackNumber){
    final player=AudioPlayer();
    player.play(AssetSource('note$trackNumber.wav'));
  }



  Expanded buildKey(Color color, int soundNumber){
    return Expanded(
      child: TextButton(
        style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(color)),
        onPressed: () async {
          setState(() {
            playFunc(soundNumber);
          });
        },
        child: Text('',
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
          //     child: Center(
          //         // child: TextButton(
          //         //   onPressed: () async{
          //         //     final player = AudioPlayer();
          //         //     await player.play(AssetSource('note1.wav'));
          //         //   },
          //         //   child: Text('Click me!'),
          //         // ),
          // )
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
                buildKey(Colors.red,1),
                buildKey(Colors.orange, 2),
                buildKey(Colors.yellow,3),
                buildKey(Colors.green, 4),
                buildKey(Colors.blue, 5),
                buildKey(Colors.indigo, 6),
                buildKey(Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }
}


