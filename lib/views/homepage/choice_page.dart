import 'package:flutter/material.dart';
import 'package:flutter_chess/commons/app_style.dart';
import 'package:flutter_chess/views/common_widgets/styled_icon_button.dart';
import 'package:flutter_chess/views/common_widgets/styled_text_button.dart';

class ChoicePage extends StatelessWidget {
  const ChoicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: StyledIconButton(
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, '/', (Route<dynamic> route) => false);
            },
            icon: Icons.arrow_back),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          const SizedBox(
            width: double.infinity,
          ),
          Text(
            'Select Mode',
            style: AppStyle().mainText,
          ),
          const SizedBox(height: 20),
          StyledTextButton(onTap: () {}, isLarge: true, text: 'Play Random'),
          const SizedBox(height: 20),
          StyledTextButton(onTap: () {}, isLarge: true, text: 'Play a Friend'),
          const SizedBox(height: 20),
          StyledTextButton(
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/gamepage', (Route<dynamic> route) => false);
              },
              isLarge: true,
              text: 'Play Offline'),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
