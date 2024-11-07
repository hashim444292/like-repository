import 'package:flutter/material.dart';
import 'package:new_flutter/profile_view.dart';

class Newfile extends StatefulWidget {
  const Newfile({super.key});

  @override
  State<Newfile> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Newfile> {
  TextEditingController add_data = TextEditingController();
  TextEditingController update_data = TextEditingController();
  List Names = ["Ali", "Akbar", "Ameen"];

  name_add() {
    setState(() {
      Names.add(add_data.text);
      add_data.clear();
    });
  }

  name_update({get_index_val}) {
    update_data.text = Names[get_index_val];
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Update Data"),
            actions: [
              TextField(
                controller: update_data,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      Names[get_index_val] = update_data.text;
                      update_data.clear();
                      Navigator.pop(context);
                    });
                  },
                  child: Text("update Name"))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          title: Text(
            "Welcome My App",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Container(
                color: Colors.red,
                child: Column(
                  children: [
                    TextField(
                      controller: add_data,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          name_add();
                        },
                        child: Text("Add Names Here"))
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: Names.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: EdgeInsets.only(bottom: 5),
                        child: ListTile(
                            tileColor: Colors.orange,
                            title: Text(Names[index]),
                            trailing: Wrap(
                              children: [
                                IconButton(
                                    onPressed: () {
                                      name_update(get_index_val: index);
                                    },
                                    icon: Icon(Icons.edit)),
                                IconButton(
                                    onPressed: () {
                                      setState(() {
                                        Names.removeAt(index);
                                      });
                                    },
                                    icon: Icon(Icons.delete))
                              ],
                            )),
                      );
                    }),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Profile_view_flutter()));
                  },
                  child: Text("Go to Third Screen"))
            ],
          ),
        ));
  }
}
