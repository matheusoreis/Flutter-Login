import 'package:flutter/material.dart';
import 'package:flutter_login/responsive.dart';
import 'package:flutter_login/screens/home/welcome_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          WelcomeScreen(),
        ],
      ),
    );
  }
}
