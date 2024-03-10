import 'package:flutter/material.dart';

import 'package:reputation_sensei/utils/app_colors.dart';

// ignore: must_be_immutable
class EditText extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  TextInputType textInputType;
  final int minLines;
  final int maxLength;
  Function? onChanged;
  final bool readOnly;
  Widget? prefix;

  EditText(
      {required this.controller,
      required this.label,
      this.textInputType = TextInputType.text,
      this.readOnly = false,
      this.minLines = 1,
      this.maxLength = 25,
      this.onChanged,
      this.prefix,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      enabled: !readOnly,
      minLines: minLines,
      maxLines: minLines,
      maxLength: maxLength,
      cursorHeight: 16,
      onChanged: (value) => onChanged == null ? (value) {} : onChanged!(value),
      style: const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 14,
          color: AppColors.textColor),
      keyboardType: textInputType,
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 15, horizontal: 12),
        filled: true,
        fillColor: AppColors.backgroundColor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: const BorderSide(color: AppColors.borderGray, width: 1),
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
        counterText: '',
        prefixIcon: prefix,
        hintText: label,
        prefixIconConstraints: const BoxConstraints(minWidth: 32),
        prefixIconColor: Colors.grey,
      ),
    );
  }
}
