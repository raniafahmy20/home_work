import 'package:account/widget/custom/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class CustomTextFieldPassword extends StatefulWidget {
  final String? Function(String?)? validator;
  final String labelText;
  void Function(String?)? onSaved;
  void Function(String)? onChanged;
  final Color color;
  CustomTextFieldPassword({
    super.key,
    required this.validator,
    required this.labelText,
    required this.color,
    this.onChanged,
    this.onSaved,
  });

  @override
  State<CustomTextFieldPassword> createState() =>
      _CustomTextFieldPasswordState();
}

class _CustomTextFieldPasswordState extends State<CustomTextFieldPassword> {
  bool obscurePassword = true;
  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      labelText: widget.labelText,
      obscure: obscurePassword,
      onSaved: widget.onSaved,
      onChanged: widget.onChanged,
      prefixIcon: const Icon(Icons.lock_outline),
      suffixIcon: IconButton(
        icon: Icon(
          obscurePassword
              ? Icons.visibility_outlined
              : Icons.visibility_off_outlined,
        ),
        onPressed: () {
          setState(() {
            obscurePassword = !obscurePassword;
          });
        },
      ),
      validator: widget.validator,
      color: widget.color,
    );
  }
}
