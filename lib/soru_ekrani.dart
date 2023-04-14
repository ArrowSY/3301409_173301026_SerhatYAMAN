import 'package:flutter/material.dart';
import 'package:quiz_app/soru_butonu.dart';
import 'package:quiz_app/data/sorular.dart';

class SoruEkrani extends StatefulWidget {
  const SoruEkrani({super.key});

  @override
  State<SoruEkrani> createState() {
    return _SoruEkraniState();
  }
}

class _SoruEkraniState extends State<SoruEkrani> {
  @override
  Widget build(context) {
    final guncelSorular = sorular[0];
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            guncelSorular.text,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 30),
          guncelSorular.answers

          CevapButonu(soruText: guncelSorular.answers[0], onTap: () {}),
          CevapButonu(soruText: guncelSorular.answers[1], onTap: () {}),
          CevapButonu(soruText: guncelSorular.answers[2], onTap: () {}),
          CevapButonu(soruText: guncelSorular.answers[3], onTap: () {}),
        ],
      ),
    );
  }
}
