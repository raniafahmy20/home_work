import 'package:chat_gpt/models/information_model.dart';
import 'package:flutter/material.dart';

class WidgetForInfoAboutChat extends StatelessWidget {
  final InformationModel info;
  const WidgetForInfoAboutChat({super.key, required this.info});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Image.asset(info.image, scale: 3),
          SizedBox(height: 5),
          Text(info.title),
          SizedBox(height: 5),
          Container(
            height: 100,
            child: ListView.separated(
              separatorBuilder: (context, index) => SizedBox(height: 8),
              itemCount: info.infoList.length,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: false,
              itemBuilder: (context, index) {
                return Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    color: Color(0xFFF4F4F4),
                  ),
                  child: Center(child: Text(info.infoList[index])),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
