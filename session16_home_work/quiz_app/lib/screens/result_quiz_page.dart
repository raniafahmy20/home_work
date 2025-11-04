import 'package:flutter/material.dart';

class ResultQuizPage extends StatelessWidget {
  const ResultQuizPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: AlignmentGeometry.bottomLeft,
            end: AlignmentGeometry.topRight,
            colors: [Color(0xFF1D1E2F), Color(0xFF50426C), Color(0xFF1B1936)],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 200),
          child: Center(
            child: Card(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 50,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text('your result is:'), Text('Not Problem')],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
