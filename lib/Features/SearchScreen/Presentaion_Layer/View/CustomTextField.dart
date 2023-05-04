import 'package:book_store/Core/utilits/Constants/Styles.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    this.controller,
    this.onsubmitted,
    required this.lableText,
    required this.borderSideColor,
    this.hintText,
  });
  final void Function(String)? onsubmitted;
  final TextEditingController? controller;
  final String lableText;
  final String? hintText;
  Color borderSideColor;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onSubmitted: onsubmitted,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(15)),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: borderSideColor),
            borderRadius: BorderRadius.circular(15),
          ),
          label: Text(
            lableText,
            style: Styles.textStyle14.copyWith(color: borderSideColor),
          ),
          suffixIcon: const Icon(Icons.search),
          suffixIconColor: borderSideColor,
          border: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(15),
              gapPadding: 15),
          hintText: hintText),
    );
  }
}
