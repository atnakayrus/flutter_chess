import 'package:chess_vectors_flutter/chess_vectors_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chess/commons/app_style.dart';
import 'package:flutter_chess/commons/enums.dart';

class ChessTile extends StatelessWidget {
  final Pieces? piece;
  final bool isDanger;
  final bool isSelected;
  final int index;

  const ChessTile(
      {super.key,
      this.piece,
      required this.isDanger,
      required this.isSelected,
      required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: _tileColor(index),
      child: Stack(
        children: [
          Center(
            child: _tileChild(
              piece: piece,
              index: index,
            ),
          )
        ],
      ),
    );
  }
}

Widget? _tileChild({Pieces? piece, required int index}) {
  if (piece != null) {}
  int row = index ~/ 10;
  int col = index % 10;
  if (row == 0 || row == 9) {
    if (col != 0 && col != 9) {
      return Text(col.toString(), style: AppStyle().mainText);
    }
  } else if (col == 0 || col == 9) {
    if (row != 0 && row != 9) {
      return Text(
        {1: 'A', 2: 'B', 3: 'C', 4: 'D', 5: 'E', 6: 'F', 7: 'G', 8: 'H'}[row] ??
            '',
        style: AppStyle().mainText,
      );
    }
  } else if (piece != null) {
    switch (piece) {
      case Pieces.blackPawn:
        return BlackPawn(
          fillColor: AppColors().darkPieceColor,
        );
      case Pieces.blackRook:
        return BlackRook(
          fillColor: AppColors().darkPieceColor,
        );
      case Pieces.blackKnight:
        return BlackKnight(
          fillColor: AppColors().darkPieceColor,
        );
      case Pieces.blackBishop:
        return BlackBishop(
          fillColor: AppColors().darkPieceColor,
        );
      case Pieces.blackQueen:
        return BlackQueen(
          fillColor: AppColors().darkPieceColor,
        );
      case Pieces.blackKing:
        return BlackKing(
          fillColor: AppColors().darkPieceColor,
        );
      case Pieces.whitePawn:
        return WhitePawn(
          fillColor: AppColors().lightPieceColor,
        );
      case Pieces.whiteRook:
        return WhiteRook(
          fillColor: AppColors().lightPieceColor,
        );
      case Pieces.whiteKnight:
        return WhiteKnight(
          fillColor: AppColors().lightPieceColor,
        );
      case Pieces.whiteBishop:
        return WhiteBishop(
          fillColor: AppColors().lightPieceColor,
        );
      case Pieces.whiteQueen:
        return WhiteQueen(
          fillColor: AppColors().lightPieceColor,
        );
      case Pieces.whiteKing:
        return WhiteKing(
          fillColor: AppColors().lightPieceColor,
        );
    }
  } else {
    return null;
  }
}

Color _tileColor(int index) {
  int row = index ~/ 10;
  int col = index % 10;
  if (row == 0 || row == 9 || col == 0 || col == 9) {
    return Colors.white24;
  } else {
    if ((row - col) % 2 == 0) {
      return AppColors().lightTileColor;
    } else {
      return AppColors().darkTileColor;
    }
  }
}
