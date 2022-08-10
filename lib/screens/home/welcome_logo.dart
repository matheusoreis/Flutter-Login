import 'package:flutter/material.dart';
import 'package:flutter_login/constants.dart';

class WelcomeLogo extends StatelessWidget {
  const WelcomeLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Arcode'.toUpperCase(),
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            letterSpacing: 3,
          ),
          textAlign: TextAlign.start,
        ),
      ],
    );
  }
}
