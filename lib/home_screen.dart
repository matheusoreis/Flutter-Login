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

    return SafeArea(
      child: SizedBox(
        height: maxHeight,
        width: maxWidth,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          child: LayoutBuilder(
            builder: ((context, constraints) {
              final bool isMobile = constraints.maxWidth <= 650;
              double constraintsHeight = constraints.maxHeight;
              double constraintsWidth = constraints.maxWidth;

              if (isMobile) {
                return HomeScreenMobile(
                  constraintsHeight: constraintsHeight,
                  constraintsWidth: constraintsWidth,
                  isMobile: true,
                );
              } else {
                return HomeScreenDesktop(
                  constraintsHeight: constraintsHeight,
                  constraintsWidth: constraintsWidth,
                  isMobile: false,
                );
              }
            }),
          ),
        ),
      ),
    );
  }
}

class HomeScreenMobile extends StatelessWidget {
  const HomeScreenMobile({
    Key? key,
    required this.constraintsHeight,
    required this.constraintsWidth,
    required this.isMobile,
  }) : super(key: key);

  final double constraintsHeight;
  final double constraintsWidth;
  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const WelcomeLogo(),
        const Spacer(),
        WelcomeText(
          isMobile: isMobile,
        ),
        const Buttons(),
      ],
    );
  }
}

class HomeScreenDesktop extends StatelessWidget {
  const HomeScreenDesktop({
    Key? key,
    required this.constraintsHeight,
    required this.constraintsWidth,
    required this.isMobile,
  }) : super(key: key);

  final double constraintsHeight;
  final double constraintsWidth;
  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        height: constraintsHeight,
        width: constraintsWidth,
        child: Row(
          children: [
            SizedBox(
              width: constraintsWidth / 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const WelcomeLogo(),
                    SizedBox(height: constraintsHeight / 8),
                    WelcomeText(
                      isMobile: isMobile,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: constraintsWidth / 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Buttons(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
