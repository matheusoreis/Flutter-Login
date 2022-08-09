import 'package:flutter/material.dart';
import 'package:flutter_login/constants.dart';
import 'package:flutter_login/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Arcode',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyAppPage(title: 'Arcode'),
    );
  }
}

class MyAppPage extends StatefulWidget {
  const MyAppPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyAppPage> createState() => _MyAppPageState();
}

class _MyAppPageState extends State<MyAppPage> {
  final activateAppBar = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: activateAppBar
          ? AppBar(
              title: Text(widget.title),
            )
          : null,
      body: const HomeScreen(),
      backgroundColor: appPrimaryColor,
    );
  }
}
