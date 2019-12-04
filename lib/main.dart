import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audio_cache.dart';


void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  Expanded buildExpanded({Color color, Color textC, int num}){
    return (Expanded(
      child: FlatButton(
        color: color,
        textColor: textC,
        onPressed: (){
          playSound(num);

        },
        child: Text("Click me 1"),),
    ));
  }

  void playSound(int num){
    final player = AudioCache();
    player.play('note$num.wav');
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  buildExpanded(color:Colors.red.shade200, textC:Colors.white, num:1),
                  buildExpanded(color:Colors.green.shade200, textC:Colors.white, num:2),
                  buildExpanded(color:Colors.blue.shade200, textC:Colors.white, num:3),
                  buildExpanded(color:Colors.orange.shade200, textC:Colors.white, num:4),


                ],
              )
          ),
        ),
      ),
    );
  }
}
