import 'package:flutter/material.dart';

class CevapButonu extends StatelessWidget {
  const CevapButonu({
    super.key,
    required this.soruText,
    required this.onTap,
  });

  final String soruText;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 40,
        ),
        backgroundColor: const Color.fromARGB(255, 1, 44, 80),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
      child: Text(soruText),
    );
  }
}
