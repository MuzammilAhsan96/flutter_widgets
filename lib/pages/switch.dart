import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MySwitch extends StatefulWidget {
  const MySwitch({Key? key}) : super(key: key);

  @override
  State<MySwitch> createState() => _MySwitchState();
}

class _MySwitchState extends State<MySwitch> {
  bool state = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Switch"),
        centerTitle: true,
      ),
      body:
          Center(
            child: Switch(
                value: state,
                onChanged: (bool s) {
                  setState(() {
                    state = s;
                    print(state);
                  });
                }),
          )

    );
  }
}
