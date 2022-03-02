import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('Here we play the xylophone'),
        ),
        body: xyloBoody(),
      ),
    );
  }
}

class xyloBoody extends StatefulWidget {
  const xyloBoody({Key? key}) : super(key: key);

  @override
  _xyloBoodyState createState() => _xyloBoodyState();
}

class _xyloBoodyState extends State<xyloBoody> {

  void playSound(int note){
    final player = AudioCache();
    player.play('note$note.wav');
  }
  keyBuild(int keyno,Color keyColor, String keyText){
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
            padding: EdgeInsets.all(20),
            backgroundColor: keyColor,
            primary: Colors.black,
            textStyle: const TextStyle(fontSize: 20)),
        onPressed: () {
          playSound(keyno);
        },
        child: Text('$keyText'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          keyBuild(1,Colors.red,'Saa'),
          keyBuild(2,Colors.blue,'Ree'),
          keyBuild(3,Colors.yellow,'Gaa'),
          keyBuild(4,Colors.green,'Maa'),
          keyBuild(5,Colors.pink,'Paa'),
          keyBuild(6,Colors.orange,'Dha'),
          keyBuild(7,Colors.grey,'Nii'),
        ],
      ),
    );
  }
}
