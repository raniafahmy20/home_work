import 'package:flutter/material.dart';

class CustomTextFieldPassword extends StatelessWidget {
  final bool obscurePassword;
  final String? Function(String?)? validator;
  final String labelText;
  final VoidCallback onPressed;
  final Function(String)? onChanged;
  final Color color;
  const CustomTextFieldPassword({
    super.key,
    required this.validator,
    required this.labelText,
    required this.color,
    required this.obscurePassword,
    required this.onPressed,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      obscureText: obscurePassword,
      decoration: InputDecoration(
        labelText: labelText,
        prefixIcon: const Icon(Icons.lock_outline),
        suffixIcon: IconButton(
          icon: Icon(
            obscurePassword
                ? Icons.visibility_outlined
                : Icons.visibility_off_outlined,
          ),
          onPressed: onPressed,
        ),

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
