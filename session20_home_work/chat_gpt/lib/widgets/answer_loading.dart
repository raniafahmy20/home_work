import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class AnswerLoadingWidget extends StatelessWidget {
  const AnswerLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        width: 100,
        height: 50,
        padding: const EdgeInsets.all(12),
        margin: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(12),
        ),
        child: const SpinKitThreeBounce(color: Colors.black, size: 18),
      ),
    );
  }
}
