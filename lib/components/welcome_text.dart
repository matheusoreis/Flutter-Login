import 'package:flutter/material.dart';
import 'package:flutter_login/responsive.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: !isMobile(context)
          ? CrossAxisAlignment.center
          : CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(bottom: 15.0),
          child: Text(
            'Welcome to Arcode',
            style: const TextStyle(fontSize: 36.0),
            textAlign: !isMobile(context) ? TextAlign.center : null,
          ),
        ),
        Text(
          'We offer the complete solution, from the creation to the publishing of your application to Google Play and the App Store.',
          textAlign: !isMobile(context) ? TextAlign.center : null,
        ),
      ],
    );
  }
}
