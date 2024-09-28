import 'package:flutter/material.dart';
import 'package:flutter_chess/commons/app_style.dart';
import 'package:flutter_chess/commons/enums.dart';
import 'package:flutter_chess/views/gamepage/widgets/chessboard.dart';

class Gamepage extends StatefulWidget {
  const Gamepage({super.key});

  @override
  State<Gamepage> createState() => _GamepageState();
}

class _GamepageState extends State<Gamepage> {
  GameModes gameMode = GameModes.offline;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          gameMode == GameModes.offline ? "O F F L I N E" : "Player 2 name",
          style: AppStyle().titleText,
        ),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [Chessboard()],
      ),
    );
  }
}
