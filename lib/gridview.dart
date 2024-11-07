import 'package:flutter/material.dart';
import 'package:new_flutter/newfile.dart';

class Gridview_new extends StatelessWidget {
  const Gridview_new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          child: GridView.count(
            crossAxisCount: 2,
            children: [
              for (int i = 0; i < 2; i++)
                Container(
                  color: [Colors.red, Colors.purple][i],
                ),
            ],
          ),
        ),
        !true
            ? Container(
                height: 20,
                width: 20,
                color: Colors.blue,
              )
            : Container(
                height: 20,
                width: 20,
                color: Colors.green,
              ),
        ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Newfile()));
            },
            child: Text("Goto 2nd Screen")),
      ],
    ));
  }
}

  //GridView.count(
      //   crossAxisCount: 2,
      //   children: [
     
      //         Container(
      //           color: Colors.red,
      //         ),
            
      //   ],
      // ),