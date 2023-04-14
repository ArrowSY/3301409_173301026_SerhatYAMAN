import 'package:flutter/material.dart';

class BaslangicEkrani extends StatelessWidget {
  const BaslangicEkrani(this.quizeBasla, {super.key});

  final void Function() quizeBasla;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
          ),
          const SizedBox(height: 80),
          const Text(
            'Başlangıç Ekranı',
            style: TextStyle(
              color: Color.fromARGB(255, 196, 192, 248),
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: quizeBasla,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Quize Başla'),
          ),
        ],
      ),
    );
  }
}
