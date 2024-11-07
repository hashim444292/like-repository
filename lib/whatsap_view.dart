import 'package:flutter/material.dart';

class whatsapp_view extends StatelessWidget {
  final String name;
  final String sub_name;
  final String? time;
  const whatsapp_view(
      {super.key, required this.name, required this.sub_name, this.time});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 5,
      ),
      child: ListTile(
        tileColor: Colors.green,
        leading: CircleAvatar(
          backgroundColor: Colors.red,
          radius: 25,
        ),
        title: Text(name),
        subtitle: Text(sub_name),
        trailing: Text(time ?? ""),
      ),
    );
  }
}
