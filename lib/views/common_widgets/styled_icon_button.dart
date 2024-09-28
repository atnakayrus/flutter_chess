import 'package:flutter/material.dart';
import 'package:flutter_chess/commons/app_style.dart';

class StyledIconButton extends StatelessWidget {
  const StyledIconButton({super.key, required this.onTap, required this.icon});

  final Function() onTap;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap,
      icon: Icon(
        icon,
        color: AppColors().buttonColor,
        size: 48,
      ),
    );
  }
}
