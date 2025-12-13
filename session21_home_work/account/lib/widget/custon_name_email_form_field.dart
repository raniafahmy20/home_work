import 'package:account/widget/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class CustonNameEmailFormField extends StatelessWidget {
  const CustonNameEmailFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFormField(
          labelText: 'Full Name',
          type: TextInputType.name,
          iconData: Icons.person_outline,

          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter your name';
            }
            return null;
          },
          color: Color(0xFF11998e),
        ),
        const SizedBox(height: 8),

        // Email Field
        CustomTextFormField(
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter your email';
            }
            if (!value.contains('@')) {
              return 'Please enter a valid email';
            }
            return null;
          },
          color: Color(0xFF11998e),
          labelText: 'Email',
          iconData: Icons.email_outlined,
          type: TextInputType.emailAddress,
        ),
      ],
    );
  }
}
