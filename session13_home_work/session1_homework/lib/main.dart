import 'package:flutter/material.dart';
import 'package:session1_homework/widgets/firstSectionAfterLine.dart';
import 'package:session1_homework/widgets/forthSectionAfterLine.dart';
import 'package:session1_homework/widgets/secondSectionAfterLine.dart';
import 'package:session1_homework/widgets/sectionBeforeLine.dart';
import 'package:session1_homework/widgets/thirdSectionAfterLine.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: EdgeInsetsGeometry.all(5),
          // child: Container(
          //  width: 400,
          //  height: 400,
          child: Column(
            children: [
              const SectionBeforeLine(),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: const Divider(
                  height: 4,
                  color: Color(0xFFE5E5E5),
                  thickness: 1,
                ),
              ),
              const FirstSectionAfterLine(),
              const SecondSectionAfterLine(),
              const ThirdSectionAfterLine(),
              const ForthSectionAfterLine(),
            ],
          ),
        ),
        //  ),
      ),
    );
  }
}
