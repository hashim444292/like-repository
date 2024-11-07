import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:new_flutter/button.dart';
import 'package:new_flutter/conter_view.dart';

class LearnView extends StatelessWidget {
  const LearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("View Learn"),
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                      itemCount: 2,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.only(bottom: 10),
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(10)),
                          child: const Row(
                            children: [
                              Icon(Icons.edit),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "Akbar",
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),
                              Spacer(),
                              Icon(Icons.play_circle_outline_sharp),
                            ],
                          ),
                        );
                      }),
                ),
                Center(
                    child: MyUsageButton(
                  button_text: "goto fourth screen",
                  reused_button: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ConterView()));
                  },
                  colors_btn: Colors.green,
                )),
                IconButton(
                    onPressed: () {}, icon: Icon(FontAwesomeIcons.twitter))
              ],
            ),
          ),
        ));
  }
}
