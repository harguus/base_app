import 'package:base_app/core/app_text_styles.dart';
import 'package:flutter/material.dart';

class InputTextWidget extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final TextInputType? type;
  final String? obscure;
  final int? lines;

  const InputTextWidget({
    Key? key,
    required this.label,
    required this.controller,
    this.obscure,
    this.type,
    this.lines,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) return "Campo obrigatório";
      },
      style: AppTextStyles.body,
      controller: controller,
      keyboardType: type == null ? TextInputType.text : type,
      maxLines: lines == null ? 1 : lines,
      obscureText: obscure == "true" ? true : false,
      decoration: InputDecoration(
        hintText: label,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.blueGrey,
          ),
        ),
      ),
    );
  }
}
