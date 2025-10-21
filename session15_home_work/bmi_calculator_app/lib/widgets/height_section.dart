import 'package:flutter/material.dart';

class HeightSection extends StatefulWidget {
  static int currentHeught = 174;
  const HeightSection({super.key});

  @override
  State<HeightSection> createState() => _HeightSectionState();
}

class _HeightSectionState extends State<HeightSection> {
  //int get myHeight() => currentHeught;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Card(
        color: Color(0xFF17172F),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            children: [
              Text('HEIGHT', style: TextStyle(color: Color(0xFF8D8F9E))),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Transform.translate(
                    offset: Offset(0, -10),
                    child: Text(
                      '${HeightSection.currentHeught}',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text('cm', style: TextStyle(color: Color(0xFF8D8F9E))),
                ],
              ),
              SliderTheme(
                data: SliderThemeData(trackHeight: 0.8),
                child: Slider(
                  value: HeightSection.currentHeught.toDouble(),
                  activeColor: Colors.white,
                  thumbColor: Color(0xFFED0D54),

                  min: 1,
                  max: 300,
                  label: '${HeightSection.currentHeught}',
                  onChanged: (double newValue) {
                    setState(() {
                      HeightSection.currentHeught = newValue.round();
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
