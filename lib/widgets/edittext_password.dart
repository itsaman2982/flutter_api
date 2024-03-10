import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

// ignore: must_be_immutable
class EditTextPassword extends StatefulWidget {
  final TextEditingController controller;
  final String label;
  final bool secureText;
  TextInputType textInputType;
  Widget? prefix;

  EditTextPassword(
      {required this.controller,
      required this.label,
      this.textInputType = TextInputType.text,
      this.secureText = true,
      this.prefix,
      Key? key})
      : super(key: key);

  @override
  State<EditTextPassword> createState() => _EditTextPasswordState();
}

class _EditTextPasswordState extends State<EditTextPassword> {
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: !_isPasswordVisible,
      style: const TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 14,
        color: AppColors.textColor,
      ),
      keyboardType: widget.textInputType,
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 15, horizontal: 12),
        filled: true,
        fillColor: AppColors.backgroundColor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide:
              const BorderSide(color: AppColors.borderGray, width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide:
          const BorderSide(color: AppColors.borderGray, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: const BorderSide(color: AppColors.primaryColor, width: 1),
        ),
        hintText: widget.label,
        prefixIconConstraints: const BoxConstraints(minWidth: 32),
        prefixIconColor: Colors.grey,
        prefixIcon: widget.prefix,
        suffixIconConstraints: const BoxConstraints(minWidth: 32),
        suffixIcon: GestureDetector(
          onTap: () {
            setState(() {
              _isPasswordVisible = !_isPasswordVisible;
            });
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Icon(
              _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
              color: AppColors.primaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
