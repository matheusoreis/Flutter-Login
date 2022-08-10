import 'package:flutter/material.dart';
import 'package:flutter_login/components/buttons.dart';
import 'package:flutter_login/components/welcome_text.dart';
import 'package:flutter_login/screens/home/welcome_logo.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double maxHeight = MediaQuery.of(context).size.height;
    double maxWidth = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: SafeArea(
        child: Container(
          constraints: BoxConstraints(
            maxHeight: maxHeight,
            maxWidth: maxWidth,
          ),
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              WelcomeLogo(),
              WelcomeText(),
              Buttons(),
            ],
          ),
        ),
      ),
    );
  }
}
