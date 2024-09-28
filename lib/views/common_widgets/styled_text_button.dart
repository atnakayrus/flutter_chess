import 'package:flutter/material.dart';
import 'package:flutter_chess/commons/app_style.dart';

class StyledTextButton extends StatelessWidget {
  const StyledTextButton({
    super.key,
    required this.onTap,
    required this.text,
    this.isLarge = false,
    this.width = 300,
  });

  final Function() onTap;
  final bool isLarge;
  final String text;
  final double width;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColors().buttonColor,
          borderRadius: const BorderRadius.all(Radius.circular(8)),
        ),
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
        child: Text(
          text,
          style: TextStyle(
            color: AppColors().buttonTextColor,
            fontSize: isLarge ? 32 : 24,
          ),
        ),
      ),
    );
  }
}
