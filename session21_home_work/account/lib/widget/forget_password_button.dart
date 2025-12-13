import 'package:flutter/material.dart';

class ForgetPasswordButton extends StatelessWidget {
  const ForgetPasswordButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () {
          // TODO: Implement forgot password
        },
        child: const Text(
          'Forgot Password?',
          style: TextStyle(
            color: Color(0xFF667eea),
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
