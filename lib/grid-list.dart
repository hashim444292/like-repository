import 'package:flutter/material.dart';

class GridList extends StatelessWidget {
  const GridList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
          itemCount: 8,
          itemBuilder: (context, index) {
            return index <= 4
                ? Icon(Icons.add)
                : ListTile(
                    title: Text("data"),
                  );
          }),
    );
  }
}
