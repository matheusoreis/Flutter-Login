import 'package:flutter/material.dart';
import 'package:flutter_login/components/welcome_text.dart';
import 'package:flutter_login/constants.dart';

class Buttons extends StatelessWidget {
  const Buttons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double maxWidth = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 20),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              minimumSize: Size(maxWidth, 56),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              primary: Colors.white,
              onPrimary: Colors.blue[800],
            ),
            child: const Text(
              'Log In',
              style: TextStyle(
                color: appPrimaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              minimumSize: Size(maxWidth, 56),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              side: const BorderSide(width: 2.0, color: Colors.white),
              primary: const Color(0XFF186ACB)),
          child: const Text('Sign Up'),
        ),
      ],
    );
  }
}
