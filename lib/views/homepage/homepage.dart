import 'package:flutter/material.dart';
import 'package:flutter_chess/commons/app_style.dart';
import 'package:flutter_chess/views/common_widgets/styled_icon_button.dart';
import 'package:flutter_chess/views/common_widgets/styled_text_button.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        leading: StyledIconButton(onTap: () {}, icon: Icons.settings),
        actions: [
          StyledIconButton(onTap: () {}, icon: Icons.person),
        ],
      ),
      bottomNavigationBar: SizedBox(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            StyledIconButton(onTap: () {}, icon: Icons.question_mark_outlined),
            StyledIconButton(onTap: () {}, icon: Icons.info_outline),
          ],
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            width: double.infinity,
          ),
          Text(
            'Welcome Back',
            style: AppStyle().mainText,
          ),
          Text(
            'Surya',
            style: AppStyle().headerText,
          ),
          const SizedBox(height: 20),
          StyledTextButton(
              onTap: () {
                Navigator.popAndPushNamed(context, '/choice');
              },
              isLarge: true,
              text: 'Play'),
          const SizedBox(height: 20),
          StyledTextButton(onTap: () {}, isLarge: true, text: 'Friends'),
          const SizedBox(height: 20),
          StyledTextButton(onTap: () {}, isLarge: true, text: 'Stats'),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
