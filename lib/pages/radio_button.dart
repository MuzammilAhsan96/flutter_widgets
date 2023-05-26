import 'package:flutter/material.dart';

class MyRadioButton extends StatefulWidget {
  const MyRadioButton({Key? key}) : super(key: key);

  @override
  State<MyRadioButton> createState() => _MyRadioButtonState();
}

class _MyRadioButtonState extends State<MyRadioButton> {
  int _value = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Radio Button"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Radio(
                  value: 1,
                  groupValue: _value,
                  onChanged: (value) {
                    setState(() {
                      _value = value as int;
                    });
                  },
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text("Radio 1"),
              ],
            ),
            Row(
              children: [
                Radio(
                  value: 2,
                  groupValue: _value,
                  onChanged: (value) {
                    setState(() {
                      _value = value as int;
                    });
                  },
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text("Radio 2"),
              ],
            ),
            Row(
              children: [
                Radio(
                  value: 3,
                  groupValue: _value,
                  onChanged: (value) {
                    setState(() {
                      _value = value as int;
                    });
                  },
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text("Radio 3"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
