import 'package:flutter/material.dart';

class MyAlertDialog extends StatelessWidget {
  const MyAlertDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Alert Dialog"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          /*color: Colors.blueAccent,
          elevation: 10,*/
          child: const Text(
            "Book your flight",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w100, color: Colors.white),
          ),
          onPressed: () => bookFlight(context),
        ),
      ),
    );
  }

  void bookFlight(BuildContext context) {
    var alertDialog = const AlertDialog(
      title: Text("Flight booked successfully"),
      content: Text("Have a pleasant flight"),
    );

    showDialog(
        context: context, builder: (BuildContext context) => alertDialog);
  }
}
