import 'package:flutter/material.dart';
import 'package:flutter_login/components/buttons.dart';
import 'package:flutter_login/components/welcome_text.dart';
import 'package:flutter_login/responsive.dart';
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
          child: isMobile(context)
              ? const HomeScreenMobile()
              : const HomeScreenDesktop(),
        ),
      ),
    );
  }
}

class HomeScreenMobile extends StatelessWidget {
  const HomeScreenMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: ((context, constraints) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            WelcomeLogo(),
            Spacer(),
            WelcomeText(),
            Buttons(),
          ],
        );
      }),
    );
  }
}

class HomeScreenDesktop extends StatelessWidget {
  const HomeScreenDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: ((context, constraints) {
        double maxHeight = constraints.maxWidth;
        double maxWidth = constraints.maxWidth;
        return SafeArea(
          child: SizedBox(
            height: maxHeight,
            width: maxWidth,
            child: Row(
              children: [
                SizedBox(
                  width: constraints.maxWidth / 2,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const WelcomeLogo(),
                        SizedBox(height: constraints.maxHeight / 8),
                        const WelcomeText(),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: constraints.maxWidth / 2,
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
      }),
    );
  }
}
