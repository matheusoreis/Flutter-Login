import 'package:flutter/material.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(bottom: 15.0),
          child: const Text(
            'Welcome to Arcode',
            style: TextStyle(fontSize: 36.0),
          ),
        ),
        const Text(
          'We offer the complete solution, from the creation to the publishing of your application to Google Play and the App Store.',
        ),
      ],
    );
  }
}
