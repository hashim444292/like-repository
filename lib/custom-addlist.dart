import 'package:flutter/material.dart';

class CustomAddlist extends StatefulWidget {
  const CustomAddlist({super.key});

  @override
  State<CustomAddlist> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CustomAddlist> {
  List FreindList = [
    "ali",
    "shakeel",
    "jhangir",
  ];
  TextEditingController textfield_controller = TextEditingController();
  TextEditingController update_textfield_controller = TextEditingController();
  addlist() {
    setState(() {
      FreindList.add(textfield_controller.text);
      textfield_controller.clear();
    });
  }

  deltelist({delte_index_val}) {
    setState(() {
      FreindList.removeAt(delte_index_val);
    });
  }

  /* updatelist({update_index_val}) {
    setState(() {
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text("Update Value"),
              content: TextField(
                controller: update_textfield_controller,
              ),
              actions: [
                ElevatedButton(
                    onPressed: () {
                      FreindList[update_index_val] =
                          update_textfield_controller.text;
                    },
                    child: const Text("update"))
              ],
            );
          });
      //FreindList[update_index_val] = textfield_controller.text;
      // textfield_controller.clear();
    });
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        backgroundColor: Colors.orange,
        leading: TextField(
          controller: textfield_controller,
        ),
        actions: [
          ElevatedButton(
              onPressed: () {
                addlist();
              },
              child: Text("Add Item"))
        ],
      ),*/
      body: SafeArea(
          child: Column(
        children: [
          Container(
            color: Colors.red,
            child: Column(
              children: [
                TextField(
                  controller: textfield_controller,
                ),
                ElevatedButton(
                    onPressed: () {
                      addlist();
                    },
                    child: Text("Add data"))
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: FreindList.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.only(bottom: 5),
                  child: ListTile(
                    leading: Text(
                      FreindList[index],
                      style: TextStyle(fontSize: 20),
                    ),
                    tileColor: Colors.yellow,
                    trailing: Wrap(
                      children: [
                        IconButton(
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    update_textfield_controller.text =
                                        FreindList[index];
                                    return AlertDialog(
                                      title: const Text("Update Data"),
                                      content: TextField(
                                          controller:
                                              update_textfield_controller),
                                      actions: [
                                        ElevatedButton(
                                            onPressed: () {
                                              setState(() {
                                                FreindList[index] =
                                                    update_textfield_controller
                                                        .text;
                                                update_textfield_controller
                                                    .clear();
                                              });
                                            },
                                            child: const Text("update Value"))
                                      ],
                                    );
                                  });
                            },
                            icon: Icon(Icons.edit)),
                        IconButton(
                            onPressed: () {
                              deltelist(delte_index_val: index);
                            },
                            icon: Icon(Icons.delete)),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      )),
    );
  }
}
