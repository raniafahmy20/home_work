import 'package:account/widget/custom/icon_view.dart';
import 'package:account/widget/custom/sub_title.dart';
import 'package:account/widget/custom/title_widget.dart';
import 'package:flutter/material.dart';

class HeaderSignUp extends StatelessWidget {
  const HeaderSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconView(iconData: Icons.person_add_outlined),
        const SizedBox(height: 20),
        // Welcome Text
        TitleWidget(title: 'Create Account'),
        const SizedBox(height: 8),
        SubTitle(title: 'Sign up to get started'),
        const SizedBox(height: 20),
      ],
    );
  }
}
