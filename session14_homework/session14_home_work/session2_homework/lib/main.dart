import 'package:flutter/material.dart';
import 'package:session2_homework/widgets/buttonCustom.dart';
import 'package:session2_homework/widgets/featuresSection.dart';
import 'package:session2_homework/widgets/helloSection.dart';
import 'package:session2_homework/widgets/quickStateSection.dart';

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
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.arrow_left),
                  Text('Flutter Applicati...', style: TextStyle(fontSize: 10)),
                ],
              ),
              SizedBox(height: 30),
              HelloSection(),
              QuickStateSection(),
              FeaturesSection(),
              Padding(
                padding: const EdgeInsets.only(top: 55),
                child: Row(
                  spacing: 8,
                  children: [
                    ButtonCustom(
                      actionName: 'Settings',
                      colorButton: Color(0xFF2196F3),
                      height: 50,
                      width: 156,
                    ),
                    ButtonCustom(
                      actionName: 'Profile',
                      colorButton: Color(0xFFFF9700),
                      height: 50,
                      width: 156,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
