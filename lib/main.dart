import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  void playNote(int nota) {
    AudioPlayer mandarina = AudioPlayer();
    mandarina.play(AssetSource("audios/note$nota.wav"));
  }

  Widget tecla(Color color, int nota) {
    return Expanded(
      child: Container(
        color: color,
        child: TextButton(
          onPressed: () {
            playNote(nota);
          },
          child: Text("hola"),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Xilophono"),
          backgroundColor: Colors.black,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            tecla(Colors.amber, 1),
            tecla(Colors.red, 2),
            tecla(const Color.fromARGB(255, 8, 33, 53), 3),
            tecla(const Color.fromARGB(255, 42, 197, 22), 4),
            tecla(const Color.fromARGB(255, 8, 53, 36), 5),
            tecla(const Color.fromARGB(255, 196, 28, 145), 6),
            tecla(const Color.fromARGB(255, 49, 8, 53), 7),
          ],
        ));
  }
}
