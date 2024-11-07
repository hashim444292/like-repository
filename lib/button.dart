import 'package:flutter/material.dart';

class MyUsageButton extends StatelessWidget {
  final String button_text;
  final Function()? reused_button;
  final Color? colors_btn;
  const MyUsageButton(
      {super.key,
      required this.button_text,
      this.reused_button,
      this.colors_btn});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: reused_button,
        style: ElevatedButton.styleFrom(
            backgroundColor: colors_btn ?? Colors.red,
            textStyle: TextStyle(fontSize: 20, color: Colors.white)),
        child: Text(button_text));
  }
}
