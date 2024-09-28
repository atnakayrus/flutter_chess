import 'package:flutter/material.dart';
import 'package:flutter_chess/commons/theme.dart';
import 'package:flutter_chess/views/gamepage/gamepage.dart';
import 'package:flutter_chess/views/homepage/choice_page.dart';
import 'package:flutter_chess/views/homepage/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appTheme,
      routes: {
        '/': (context) => const Homepage(),
        '/choice': (context) => const ChoicePage(),
        '/gamepage': (context) => const Gamepage(),
      },
      initialRoute: '/',
    );
  }
}
