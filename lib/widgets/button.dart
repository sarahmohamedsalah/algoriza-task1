import 'package:flutter/material.dart';
import 'package:task1/widgets/text_utils.dart';

class Button extends StatelessWidget {
  final String text;
  final Function() onPressed;
  const Button({required this.text, required this.onPressed, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        primary: Colors.blue, // background
        // foreground
      ),
      child: const TextUtils(
        fontSize: 18,
        text: 'Sign in',
        fontWeight: FontWeight.normal,
        color: Colors.white,
        underline: TextDecoration.none,
      ),
    );
  }
}
