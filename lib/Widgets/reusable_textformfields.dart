import 'package:flutter/material.dart';

class ReusableTextFormField extends StatelessWidget {
  final String hintText;
  final int? height;
  const ReusableTextFormField({super.key, required this.hintText, this.height});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: TextFormField(
        maxLines: height ?? 1,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(16),
          hintText: hintText,
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.blue,
            ),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
              width: 2.0,
            ),
          ),
        ),
      ),
    );
  }
}
