import 'package:flutter/material.dart';
import 'package:new_flutter/button.dart';
import 'package:new_flutter/view_learn.dart';

class ListTutorial extends StatelessWidget {
  ListTutorial({super.key});

  // List<StudentModel> studentList = [
  //   StudentModel(
  //     id: 1,
  //     name: 'Saad',
  //     grade: '5',
  //     age: 10,
  //     icon: Icons.cancel,
  //   ),
  //   StudentModel(
  //     id: 1,
  //     name: 'Ali',
  //     grade: '2',
  //     age: 15,
  //     icon: Icons.calculate,
  //   ),
  //   StudentModel(
  //     id: 1,
  //     name: 'Hashim Bhai',
  //     grade: '7',
  //     age: 13,
  //     icon: Icons.calendar_month,
  //   ),
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Center(
      child: MyUsageButton(
        button_text: "abc",
        reused_button: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => LearnView()));
        },
        colors_btn: Colors.orange,
      ),
    )));
    // ],
    // ),
    // )),
    //))
  }
}

// class StudentModel {
//   int? id;
//   String? name;
//   String? grade;
//   int? age;
//   IconData? icon;
//   StudentModel({this.id, this.name, this.icon, this.grade, this.age});
// }
