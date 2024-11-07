import 'dart:async';

import 'package:flutter/material.dart';
import 'package:new_flutter/newfile.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  // int a = 0;
  // int b = 0;
  // int c = 0;
  @override
  void initState() {
    //  TODO: implement initState

    Timer(
        Duration(milliseconds: 2000),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Newfile())));
    super.initState();
  }

  // update_data() async {
  //   setState(() {
  //     a++;

  //     b++;
  //   });
  //   await Future.delayed(Duration(seconds: 10));

  //   c++;
  // }

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //     appBar: AppBar(
    //       title: Text("data"),
    //     ),
    //     body: SafeArea(
    //       child: Column(
    //         children: [
    //           Text(a.toString()),
    //           Text(a.toString()),
    //           Text(a.toString()),
    //           ElevatedButton(
    //               onPressed: () {
    //                 update_data();
    //               },
    //               child: Text("update counter"))
    //         ],
    //       ),
    //     ));

    return Scaffold(
      body: SafeArea(
        child: Stack(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image(image: AssetImage("assets/bg-img.jpg")),
            ),
            Image(image: AssetImage("assets/logo-file.png"))
          ],
        ),
      ),
    );
  }
}
