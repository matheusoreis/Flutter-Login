import 'package:flutter/material.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({Key? key, required this.isMobile}) : super(key: key);

  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          isMobile ? CrossAxisAlignment.start : CrossAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.only(bottom: 15.0),
          child: Text(
            'Welcome to Arcode',
            style: const TextStyle(fontSize: 36.0),
            textAlign: isMobile ? TextAlign.start : TextAlign.center,
          ),
        ),
        Text(
          'We offer the complete solution, from the creation to the publishing of your application to Google Play and the App Store.',
          textAlign: isMobile ? TextAlign.start : TextAlign.center,
        ),
      ],
    );
  }
}
