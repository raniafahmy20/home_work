import 'package:bmi_calculator_app/widgets/custom_button_icon.dart';
import 'package:flutter/material.dart';

class ExpandedWeightAndAgeItem extends StatefulWidget {
  late String cardName;
  static int cardValueWeight = 70;
  int? cardValueAge;

  ExpandedWeightAndAgeItem({
    super.key,
    required this.cardName,
    this.cardValueAge,
  });

  @override
  State<ExpandedWeightAndAgeItem> createState() => _WeightAndAgeItemState();
}

class _WeightAndAgeItemState extends State<ExpandedWeightAndAgeItem> {
  // int get myWeight => widget.cardValue;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        color: Color(0xFF17172F),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            children: [
              Text(widget.cardName, style: TextStyle(color: Color(0xFF8D8D99))),
              Text(
                '${widget.cardValueAge == null ? ExpandedWeightAndAgeItem.cardValueWeight : widget.cardValueAge}',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButtonIcon(
                    iconData: Icons.minimize,
                    action: () {
                      setState(() {
                        if (widget.cardValueAge == null) {
                          ExpandedWeightAndAgeItem.cardValueWeight--;
                        } else {
                          widget.cardValueAge = widget.cardValueAge! - 1;
                        }
                      });
                    },
                  ),
                  SizedBox(width: 15),
                  CustomButtonIcon(
                    iconData: Icons.add,
                    action: () {
                      setState(() {
                        if (widget.cardValueAge == null) {
                          ExpandedWeightAndAgeItem.cardValueWeight++;
                        } else {
                          widget.cardValueAge = widget.cardValueAge! + 1;
                        }
                      });
                      print('ssssssssssssssssssssssssssssssss');
                      print(ExpandedWeightAndAgeItem.cardValueWeight);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
