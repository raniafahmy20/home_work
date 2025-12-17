import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String labelText;
  TextInputType? type;
  void Function(String?)? onSaved;
  final Color color;
  Widget? prefixIcon;
  Widget? suffixIcon;
  void Function(String)? onChanged;
  bool obscure;
  final String? Function(String?)? validator;

  CustomTextFormField({
    super.key,
    this.onSaved,
    this.onChanged,
    this.suffixIcon,
    this.obscure = false,
    this.prefixIcon,
    required this.labelText,
    this.type,
    required this.validator,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      onChanged: onChanged,
      obscureText: obscure,
      decoration: InputDecoration(
        labelText: labelText,
        prefixIcon: prefixIcon,

        suffixIcon: suffixIcon,
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
