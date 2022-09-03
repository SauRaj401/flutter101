import 'package:flutter/material.dart';

// ignore: prefer_const_constructors
void main() => runApp(MaterialApp(
      title: "TODO APP",
      // ignore: prefer_const_constructors
      home: TODOAPP(),
    ));

class TODOAPP extends StatefulWidget {
  const TODOAPP({Key? key}) : super(key: key);

  @override
  State<TODOAPP> createState() => _TODOAPPState();
}

class _TODOAPPState extends State<TODOAPP> {
  late String values;
  var listToDo = ['hello'];

  addTODO(String item) {
    setState(() {
      listToDo.add(item);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TO DO APP"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        // ignore: prefer_const_constructors
        child: Icon(Icons.add),
        onPressed: () {
          addTODO(values);
        },
      ),
      body: ListView.builder(
          itemCount: listToDo.length,
          itemBuilder: (context, index) {
            return index == 0
                ? Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextFormField(
                      decoration: const InputDecoration(hintText: "Add Item"),
                      onChanged: (val) {
                        values = val;
                      },
                    ),
                  )
                : ListTile(
                    leading: const Icon(Icons.work),
                    trailing: const Icon(Icons.book),
                    title: Text(
                      listToDo[index],
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  );
          }),
      // body: ListView(
      //   children: [
      //     Padding(
      //       padding: const EdgeInsets.all(20.0),
      //       child: TextFormField(),
      //     ),
      //       const ListTile(
      //         title: Text("Get up"),
      //         leading: Icon(Icons.info),
      //       ),
      //       const ListTile(
      //         title: Text("Code"),
      //         leading: Icon(Icons.info),
      //       ),
      //       const ListTile(
      //         title: Text("Sleep"),
      //         leading: Icon(Icons.info),
      //       )
      //   ],
      // ),
//The above code is for static vide so to do with dynamic we use list
//view.bulider and can be used in future.
    );
  }
}
