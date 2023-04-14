import 'package:flutter/material.dart';
import 'package:quiz_app/baslangic_ekrani.dart';
import 'package:quiz_app/soru_ekrani.dart';
import 'package:quiz_app/soru_ekrani.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var aktifEkran = 'baslangic-ekrani';

  void ekranDegistirme() {
    setState(() {
      aktifEkran = 'soru-ekrani';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = BaslangicEkrani(ekranDegistirme);
    if (aktifEkran == 'soru-ekrani') {
      screenWidget = const SoruEkrani();
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 84, 23, 189),
                  Color.fromARGB(255, 15, 13, 165),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: screenWidget),
      ),
    );
  }
}
