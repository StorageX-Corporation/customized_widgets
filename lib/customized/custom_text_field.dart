import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../custom_local_function.dart';
import '../theme_color.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
    this.text, {
    this.keyboard,
    this.lastTextField = false,
    this.defaultData,
    required this.controller,
    this.validator,
    this.inputFormatters,
    this.prefixText,
    this.formKey,
    this.maxLines,
    this.height,
    this.suffix,
    this.color = ThemeColors.PRIMARY_COLOR,
    this.onChanged,
  });
  final Widget? suffix;
  final int? maxLines;
  final Color color;
  final String text;
  final double? height;
  final String? Function(String?)? validator;
  final Future<void> Function(String)? onChanged;
  final TextEditingController? controller;
  final TextInputType? keyboard;
  final bool lastTextField;
  final String? defaultData;
  final List<TextInputFormatter>? inputFormatters;
  final String? prefixText;
  final Key? formKey;
  @override
  Widget build(BuildContext context) {
    final node = FocusScope.of(context);
    return Form(
      key: formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: TextFormField(
        onChanged: onChanged,
        textCapitalization: TextCapitalization.words,
        controller: controller,
        inputFormatters: inputFormatters,
        onEditingComplete: () {
          if (lastTextField) {
            node.unfocus();
          }
          {
            node.nextFocus();
          }
        },
        validator: validator,
        style: CustomLocalFunction.customTextStyle(color: Colors.black),
        maxLines: maxLines,
        maxLengthEnforcement: MaxLengthEnforcement.enforced,
        keyboardType: keyboard ?? TextInputType.text,
        enabled: defaultData == null,
        decoration: InputDecoration(
          suffixIcon: suffix,
          prefixText: prefixText,
          contentPadding: const EdgeInsets.symmetric(horizontal: 8),
          filled: true,
          fillColor: color.withOpacity(0.2),
          focusColor: color,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: Colors.red,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: color,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(style: BorderStyle.none),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Colors.grey),
          ),
          hintText: defaultData ?? text,
          hintStyle:
              CustomLocalFunction.customTextStyle(spacing: 2, height: height),
        ),
      ),
    );
  }
}
