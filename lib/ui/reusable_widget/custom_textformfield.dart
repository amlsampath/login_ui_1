import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final Color bgColor;
  final String hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText;
  String? Function(String?) validation;
  CustomTextFormField({
    required this.validation,
    this.obscureText = true,
    this.bgColor = Colors.white,
    required this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(
        10.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: bgColor,
      ),
      child: TextFormField(
        keyboardType: TextInputType.text,
        validator: validation,
        obscureText: !obscureText,
        decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: prefixIcon == null ? null : prefixIcon,
          suffixIcon: suffixIcon == null ? null : suffixIcon,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
