import 'package:account/widget/custom/icon_view.dart';
import 'package:account/widget/custom/sub_title.dart';
import 'package:account/widget/custom/title_widget.dart';
import 'package:flutter/material.dart';

class HeaderLoginScreen extends StatelessWidget {
  const HeaderLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconView(iconData: Icons.lock_outline),
        const SizedBox(height: 40),
        // Welcome Text
        TitleWidget(title: 'Welcome Back'),
        const SizedBox(height: 8),
        SubTitle(title: 'Sign in to continue'),
        const SizedBox(height: 50),
      ],
    );
  }
}
