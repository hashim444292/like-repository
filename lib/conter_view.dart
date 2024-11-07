import 'package:flutter/material.dart';
import 'package:new_flutter/button.dart';

class ConterView extends StatefulWidget {
  const ConterView({super.key});

  @override
  State<ConterView> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ConterView> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("it counter screen"),
        ),
        body: SafeArea(
          child: Center(
            child: MyUsageButton(
              button_text: "abcd",
              reused_button: () {},
            ),
          ),
        ));
  }
}
