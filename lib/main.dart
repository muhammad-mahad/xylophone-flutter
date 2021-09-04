import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                XylophoneButton(
                  keyNo: 1,
                  color: Colors.red,
                ),
                XylophoneButton(
                  keyNo: 2,
                  color: Colors.orange,
                ),
                XylophoneButton(
                  keyNo: 3,
                  color: Colors.yellow,
                ),
                XylophoneButton(
                  keyNo: 4,
                  color: Colors.green,
                ),
                XylophoneButton(
                  keyNo: 5,
                  color: Colors.teal,
                ),
                XylophoneButton(
                  keyNo: 6,
                  color: Colors.blue,
                ),
                XylophoneButton(
                  keyNo: 7,
                  color: Colors.purple,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class XylophoneButton extends StatelessWidget {
  static AudioCache player = AudioCache();
  static String FILE_NAME = "note";
  static String EXTENTION = '.wav';

  int keyNo;
  Color color;

  XylophoneButton({int keyNo, Color color}) {
    this.keyNo = keyNo;
    this.color = color;
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          player.play("$FILE_NAME${this.keyNo}$EXTENTION");
        },
        style: TextButton.styleFrom(
          backgroundColor: this.color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
            side: BorderSide(
                color: this.color
            ),
          ),
        ), child: null,
      ),
    );
  }
}
