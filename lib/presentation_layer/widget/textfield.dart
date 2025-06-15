import 'package:flutter/material.dart';

class Field extends StatelessWidget {
  final TextInputType type;
  final bool obxc;
  final String text;
  final Function(String) func;
  Field(
      {required this.text,
      required this.obxc,
      required this.type,
      required this.func});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: func,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          hintText: "${text}",
          hintStyle: TextStyle(color: Colors.black.withOpacity(0.4)),
          filled: true,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.grey)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.grey))),
    );
  }
}
