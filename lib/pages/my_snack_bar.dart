import 'package:flutter/material.dart';

class MySnackBar extends StatelessWidget {
  const MySnackBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("ListView.builder")),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
                leading: const Icon(Icons.list),
                trailing: const Text(
                  "GFG",
                  style: TextStyle(color: Colors.green, fontSize: 15),
                ),
                title: Text("List item $index"),
                onTap: () => showSnackBar(context, index.toString()));
          }),
    );
  }

  void showSnackBar(BuildContext context, String item) {
    var snackbar = SnackBar(
      content: Text("You just tapped $item"),
      action: SnackBarAction(
        label: "UNDO",
        onPressed: () {
          debugPrint("Dummy action performing");
        },
      ),
    );
    // Show the SnackBar
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }
}
