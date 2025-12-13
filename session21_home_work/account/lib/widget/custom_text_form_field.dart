import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String labelText;
  final TextInputType type;
  final IconData iconData;
  final Color color;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  const CustomTextFormField({
    super.key,

    required this.labelText,
    required this.type,
    required this.iconData,
    this.controller,
    required this.validator,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: type,
      decoration: InputDecoration(
        labelText: labelText,
        prefixIcon: Icon(iconData),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.grey.shade300),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: color, width: 2),
        ),
        filled: true,
        fillColor: Colors.grey.shade50,
      ),
      validator: validator,
    );
  }
}
