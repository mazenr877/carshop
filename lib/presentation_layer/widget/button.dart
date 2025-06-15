import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key, required this.text, required this.btn});
  final String text;
  final btn;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: btn,
      style: const ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(Colors.green)),
      child: Text(
        "${text}",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
