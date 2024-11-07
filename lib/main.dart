import 'package:flutter/material.dart';
import 'package:new_flutter/conter_view.dart';
import 'package:new_flutter/custom-addlist.dart';
import 'package:new_flutter/grid-list.dart';
import 'package:new_flutter/gridview.dart';
import 'package:new_flutter/listview.dart';
import 'package:new_flutter/newfile.dart';
import 'package:new_flutter/profile_view.dart';
import 'package:new_flutter/splash.dart';

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Splash());
  }
}
