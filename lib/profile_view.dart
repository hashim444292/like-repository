import 'package:flutter/material.dart';
import 'package:new_flutter/whatsap_view.dart';

class Profile_view_flutter extends StatelessWidget {
  const Profile_view_flutter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("data"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            whatsapp_view(
              name: "Sameer",
              sub_name: "Ali",
              time: "10:00",
            ),
            whatsapp_view(
              name: "Ahmed",
              sub_name: "Ali",
              time: "12:00",
            ),
            whatsapp_view(
              name: "Yamaan",
              sub_name: "Ali",
            )
          ],
        ),
      ),
    );
  }
}
