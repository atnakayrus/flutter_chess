import 'package:flutter/material.dart';
import 'package:flutter_chess/commons/configs.dart';
import 'package:flutter_chess/commons/enums.dart';
import 'package:flutter_chess/views/gamepage/widgets/chess_tile.dart';

class Chessboard extends StatefulWidget {
  const Chessboard({super.key});

  @override
  State<Chessboard> createState() => _ChessboardState();
}

class _ChessboardState extends State<Chessboard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Config().getLogicalSize().width,
      child: GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          // reverse: true,
          itemCount: 100,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 10),
          itemBuilder: (context, index) {
            return ChessTile(
              index: 99 - index,
              isDanger: false,
              isSelected: false,
              piece: 99 - index == 15 ? Pieces.blackBishop : null,
            );
          }),
    );
  }
}
